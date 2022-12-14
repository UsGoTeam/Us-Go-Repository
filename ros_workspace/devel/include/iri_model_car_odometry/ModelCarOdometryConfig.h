//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the iri_model_car_odometry package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __iri_model_car_odometry__MODELCARODOMETRYCONFIG_H__
#define __iri_model_car_odometry__MODELCARODOMETRYCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace iri_model_car_odometry
{
  class ModelCarOdometryConfigStatics;

  class ModelCarOdometryConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(ModelCarOdometryConfig &config, const ModelCarOdometryConfig &max, const ModelCarOdometryConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const ModelCarOdometryConfig &config1, const ModelCarOdometryConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, ModelCarOdometryConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const ModelCarOdometryConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ModelCarOdometryConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const ModelCarOdometryConfig &config) const = 0;
      virtual void getValue(const ModelCarOdometryConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T ModelCarOdometryConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T ModelCarOdometryConfig::* field;

      virtual void clamp(ModelCarOdometryConfig &config, const ModelCarOdometryConfig &max, const ModelCarOdometryConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const ModelCarOdometryConfig &config1, const ModelCarOdometryConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, ModelCarOdometryConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const ModelCarOdometryConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ModelCarOdometryConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const ModelCarOdometryConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const ModelCarOdometryConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, ModelCarOdometryConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, ModelCarOdometryConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T PT::* field;
      std::vector<ModelCarOdometryConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(ModelCarOdometryConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("rate"==(*_i)->name){rate = boost::any_cast<double>(val);}
        if("odom_frame"==(*_i)->name){odom_frame = boost::any_cast<std::string>(val);}
        if("robot_frame"==(*_i)->name){robot_frame = boost::any_cast<std::string>(val);}
        if("encoder_ticks"==(*_i)->name){encoder_ticks = boost::any_cast<int>(val);}
        if("wheel_diameter"==(*_i)->name){wheel_diameter = boost::any_cast<double>(val);}
        if("wheel_distance"==(*_i)->name){wheel_distance = boost::any_cast<double>(val);}
        if("axel_distance"==(*_i)->name){axel_distance = boost::any_cast<double>(val);}
        if("enable_filter"==(*_i)->name){enable_filter = boost::any_cast<bool>(val);}
        if("filter_coeff"==(*_i)->name){filter_coeff = boost::any_cast<double>(val);}
        if("speed_deadband"==(*_i)->name){speed_deadband = boost::any_cast<double>(val);}
        if("max_steer_angle"==(*_i)->name){max_steer_angle = boost::any_cast<double>(val);}
        if("min_steer_angle"==(*_i)->name){min_steer_angle = boost::any_cast<double>(val);}
        if("max_steer_control"==(*_i)->name){max_steer_control = boost::any_cast<double>(val);}
        if("min_steer_control"==(*_i)->name){min_steer_control = boost::any_cast<double>(val);}
        if("publish_tf"==(*_i)->name){publish_tf = boost::any_cast<bool>(val);}
      }
    }

    double rate;
std::string odom_frame;
std::string robot_frame;
int encoder_ticks;
double wheel_diameter;
double wheel_distance;
double axel_distance;
bool enable_filter;
double filter_coeff;
double speed_deadband;
double max_steer_angle;
double min_steer_angle;
double max_steer_control;
double min_steer_control;
bool publish_tf;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double rate;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string odom_frame;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      std::string robot_frame;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int encoder_ticks;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double wheel_diameter;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double wheel_distance;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double axel_distance;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool enable_filter;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double filter_coeff;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double speed_deadband;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_steer_angle;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_steer_angle;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_steer_control;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_steer_control;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool publish_tf;
//#line 228 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("ModelCarOdometryConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const ModelCarOdometryConfig &__max__ = __getMax__();
      const ModelCarOdometryConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const ModelCarOdometryConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const ModelCarOdometryConfig &__getDefault__();
    static const ModelCarOdometryConfig &__getMax__();
    static const ModelCarOdometryConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const ModelCarOdometryConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void ModelCarOdometryConfig::ParamDescription<std::string>::clamp(ModelCarOdometryConfig &config, const ModelCarOdometryConfig &max, const ModelCarOdometryConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class ModelCarOdometryConfigStatics
  {
    friend class ModelCarOdometryConfig;

    ModelCarOdometryConfigStatics()
    {
ModelCarOdometryConfig::GroupDescription<ModelCarOdometryConfig::DEFAULT, ModelCarOdometryConfig> Default("Default", "", 0, 0, true, &ModelCarOdometryConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.rate = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.rate = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.rate = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("rate", "double", 0, "Main loop rate (Hz)", "", &ModelCarOdometryConfig::rate)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("rate", "double", 0, "Main loop rate (Hz)", "", &ModelCarOdometryConfig::rate)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.odom_frame = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.odom_frame = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.odom_frame = "odom";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<std::string>("odom_frame", "str", 0, "Name of the odometry frame", "", &ModelCarOdometryConfig::odom_frame)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<std::string>("odom_frame", "str", 0, "Name of the odometry frame", "", &ModelCarOdometryConfig::odom_frame)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.robot_frame = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.robot_frame = "";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.robot_frame = "base_footprint";
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<std::string>("robot_frame", "str", 0, "Name of the robot frame", "", &ModelCarOdometryConfig::robot_frame)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<std::string>("robot_frame", "str", 0, "Name of the robot frame", "", &ModelCarOdometryConfig::robot_frame)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.encoder_ticks = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.encoder_ticks = 1000;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.encoder_ticks = 60;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<int>("encoder_ticks", "int", 0, "Number of encoder ticks per revolution", "", &ModelCarOdometryConfig::encoder_ticks)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<int>("encoder_ticks", "int", 0, "Number of encoder ticks per revolution", "", &ModelCarOdometryConfig::encoder_ticks)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.wheel_diameter = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.wheel_diameter = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.wheel_diameter = 0.108;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("wheel_diameter", "double", 0, "Diameter of the wheel in meters", "", &ModelCarOdometryConfig::wheel_diameter)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("wheel_diameter", "double", 0, "Diameter of the wheel in meters", "", &ModelCarOdometryConfig::wheel_diameter)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.wheel_distance = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.wheel_distance = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.wheel_distance = 0.265;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("wheel_distance", "double", 0, "Distance between wheels in meters", "", &ModelCarOdometryConfig::wheel_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("wheel_distance", "double", 0, "Distance between wheels in meters", "", &ModelCarOdometryConfig::wheel_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.axel_distance = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.axel_distance = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.axel_distance = 0.36;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("axel_distance", "double", 0, "Distance betweena axels in meters", "", &ModelCarOdometryConfig::axel_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("axel_distance", "double", 0, "Distance betweena axels in meters", "", &ModelCarOdometryConfig::axel_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.enable_filter = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.enable_filter = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.enable_filter = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<bool>("enable_filter", "bool", 0, "Enable the low pass filter for the encoder data", "", &ModelCarOdometryConfig::enable_filter)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<bool>("enable_filter", "bool", 0, "Enable the low pass filter for the encoder data", "", &ModelCarOdometryConfig::enable_filter)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.filter_coeff = 0.01;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.filter_coeff = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.filter_coeff = 0.3;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("filter_coeff", "double", 0, "Coefficient for the first order low pass filter", "", &ModelCarOdometryConfig::filter_coeff)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("filter_coeff", "double", 0, "Coefficient for the first order low pass filter", "", &ModelCarOdometryConfig::filter_coeff)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speed_deadband = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speed_deadband = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speed_deadband = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("speed_deadband", "double", 0, "Minimum valid speed command", "", &ModelCarOdometryConfig::speed_deadband)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("speed_deadband", "double", 0, "Minimum valid speed command", "", &ModelCarOdometryConfig::speed_deadband)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_steer_angle = -1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_steer_angle = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_steer_angle = 0.4;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("max_steer_angle", "double", 0, "Maximum steering angle", "", &ModelCarOdometryConfig::max_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("max_steer_angle", "double", 0, "Maximum steering angle", "", &ModelCarOdometryConfig::max_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_steer_angle = -1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_steer_angle = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_steer_angle = -0.4;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("min_steer_angle", "double", 0, "Minimum steering angle", "", &ModelCarOdometryConfig::min_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("min_steer_angle", "double", 0, "Minimum steering angle", "", &ModelCarOdometryConfig::min_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_steer_control = -100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_steer_control = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_steer_control = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("max_steer_control", "double", 0, "Maximum output steer command value", "", &ModelCarOdometryConfig::max_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("max_steer_control", "double", 0, "Maximum output steer command value", "", &ModelCarOdometryConfig::max_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_steer_control = -100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_steer_control = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_steer_control = -10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("min_steer_control", "double", 0, "Minimum output steer command value", "", &ModelCarOdometryConfig::min_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<double>("min_steer_control", "double", 0, "Minimum output steer command value", "", &ModelCarOdometryConfig::min_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.publish_tf = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.publish_tf = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.publish_tf = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<bool>("publish_tf", "bool", 0, "Publish or not the TF transform", "", &ModelCarOdometryConfig::publish_tf)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarOdometryConfig::AbstractParamDescriptionConstPtr(new ModelCarOdometryConfig::ParamDescription<bool>("publish_tf", "bool", 0, "Publish or not the TF transform", "", &ModelCarOdometryConfig::publish_tf)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(ModelCarOdometryConfig::AbstractGroupDescriptionConstPtr(new ModelCarOdometryConfig::GroupDescription<ModelCarOdometryConfig::DEFAULT, ModelCarOdometryConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<ModelCarOdometryConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<ModelCarOdometryConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<ModelCarOdometryConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    ModelCarOdometryConfig __max__;
    ModelCarOdometryConfig __min__;
    ModelCarOdometryConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const ModelCarOdometryConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static ModelCarOdometryConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &ModelCarOdometryConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const ModelCarOdometryConfig &ModelCarOdometryConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const ModelCarOdometryConfig &ModelCarOdometryConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const ModelCarOdometryConfig &ModelCarOdometryConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<ModelCarOdometryConfig::AbstractParamDescriptionConstPtr> &ModelCarOdometryConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<ModelCarOdometryConfig::AbstractGroupDescriptionConstPtr> &ModelCarOdometryConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const ModelCarOdometryConfigStatics *ModelCarOdometryConfig::__get_statics__()
  {
    const static ModelCarOdometryConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = ModelCarOdometryConfigStatics::get_instance();

    return statics;
  }


}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __MODELCARODOMETRYRECONFIGURATOR_H__
