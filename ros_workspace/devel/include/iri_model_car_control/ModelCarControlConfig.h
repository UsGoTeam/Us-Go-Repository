//#line 2 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the iri_model_car_control package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __iri_model_car_control__MODELCARCONTROLCONFIG_H__
#define __iri_model_car_control__MODELCARCONTROLCONFIG_H__

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

namespace iri_model_car_control
{
  class ModelCarControlConfigStatics;

  class ModelCarControlConfig
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

      virtual void clamp(ModelCarControlConfig &config, const ModelCarControlConfig &max, const ModelCarControlConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const ModelCarControlConfig &config1, const ModelCarControlConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, ModelCarControlConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const ModelCarControlConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ModelCarControlConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const ModelCarControlConfig &config) const = 0;
      virtual void getValue(const ModelCarControlConfig &config, boost::any &val) const = 0;
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
          std::string a_description, std::string a_edit_method, T ModelCarControlConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T ModelCarControlConfig::* field;

      virtual void clamp(ModelCarControlConfig &config, const ModelCarControlConfig &max, const ModelCarControlConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const ModelCarControlConfig &config1, const ModelCarControlConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, ModelCarControlConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const ModelCarControlConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, ModelCarControlConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const ModelCarControlConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const ModelCarControlConfig &config, boost::any &val) const
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
      virtual void updateParams(boost::any &cfg, ModelCarControlConfig &top) const= 0;
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

      virtual void updateParams(boost::any &cfg, ModelCarControlConfig &top) const
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
      std::vector<ModelCarControlConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(ModelCarControlConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("rate"==(*_i)->name){rate = boost::any_cast<double>(val);}
        if("speed_Kp"==(*_i)->name){speed_Kp = boost::any_cast<double>(val);}
        if("speed_Ki"==(*_i)->name){speed_Ki = boost::any_cast<double>(val);}
        if("speed_Kd"==(*_i)->name){speed_Kd = boost::any_cast<double>(val);}
        if("speed_i_max"==(*_i)->name){speed_i_max = boost::any_cast<double>(val);}
        if("speed_deadband"==(*_i)->name){speed_deadband = boost::any_cast<double>(val);}
        if("watchdog_time"==(*_i)->name){watchdog_time = boost::any_cast<double>(val);}
        if("axel_distance"==(*_i)->name){axel_distance = boost::any_cast<double>(val);}
        if("max_steer_angle"==(*_i)->name){max_steer_angle = boost::any_cast<double>(val);}
        if("min_steer_angle"==(*_i)->name){min_steer_angle = boost::any_cast<double>(val);}
        if("max_speed_control"==(*_i)->name){max_speed_control = boost::any_cast<double>(val);}
        if("min_speed_control"==(*_i)->name){min_speed_control = boost::any_cast<double>(val);}
        if("max_steer_control"==(*_i)->name){max_steer_control = boost::any_cast<double>(val);}
        if("min_steer_control"==(*_i)->name){min_steer_control = boost::any_cast<double>(val);}
        if("use_steer_angle_cmd"==(*_i)->name){use_steer_angle_cmd = boost::any_cast<bool>(val);}
      }
    }

    double rate;
double speed_Kp;
double speed_Ki;
double speed_Kd;
double speed_i_max;
double speed_deadband;
double watchdog_time;
double axel_distance;
double max_steer_angle;
double min_steer_angle;
double max_speed_control;
double min_speed_control;
double max_steer_control;
double min_steer_control;
bool use_steer_angle_cmd;

    bool state;
    std::string name;

    
}groups;



//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double rate;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double speed_Kp;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double speed_Ki;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double speed_Kd;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double speed_i_max;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double speed_deadband;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double watchdog_time;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double axel_distance;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_steer_angle;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_steer_angle;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_speed_control;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_speed_control;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double max_steer_control;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_steer_control;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool use_steer_angle_cmd;
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
        ROS_ERROR("ModelCarControlConfig::__fromMessage__ called with an unexpected parameter.");
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
      const ModelCarControlConfig &__max__ = __getMax__();
      const ModelCarControlConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const ModelCarControlConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const ModelCarControlConfig &__getDefault__();
    static const ModelCarControlConfig &__getMax__();
    static const ModelCarControlConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const ModelCarControlConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void ModelCarControlConfig::ParamDescription<std::string>::clamp(ModelCarControlConfig &config, const ModelCarControlConfig &max, const ModelCarControlConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class ModelCarControlConfigStatics
  {
    friend class ModelCarControlConfig;

    ModelCarControlConfigStatics()
    {
ModelCarControlConfig::GroupDescription<ModelCarControlConfig::DEFAULT, ModelCarControlConfig> Default("Default", "", 0, 0, true, &ModelCarControlConfig::groups);
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.rate = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.rate = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.rate = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("rate", "double", 0, "Main loop rate (Hz)", "", &ModelCarControlConfig::rate)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("rate", "double", 0, "Main loop rate (Hz)", "", &ModelCarControlConfig::rate)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speed_Kp = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speed_Kp = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speed_Kp = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_Kp", "double", 0, "Proportional constant of the speed PID", "", &ModelCarControlConfig::speed_Kp)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_Kp", "double", 0, "Proportional constant of the speed PID", "", &ModelCarControlConfig::speed_Kp)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speed_Ki = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speed_Ki = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speed_Ki = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_Ki", "double", 0, "Integral constant of the speed PID", "", &ModelCarControlConfig::speed_Ki)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_Ki", "double", 0, "Integral constant of the speed PID", "", &ModelCarControlConfig::speed_Ki)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speed_Kd = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speed_Kd = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speed_Kd = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_Kd", "double", 0, "Differential constant of the speed PID", "", &ModelCarControlConfig::speed_Kd)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_Kd", "double", 0, "Differential constant of the speed PID", "", &ModelCarControlConfig::speed_Kd)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speed_i_max = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speed_i_max = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speed_i_max = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_i_max", "double", 0, "Maximum integral value pf the speed PID", "", &ModelCarControlConfig::speed_i_max)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_i_max", "double", 0, "Maximum integral value pf the speed PID", "", &ModelCarControlConfig::speed_i_max)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.speed_deadband = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.speed_deadband = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.speed_deadband = 0.1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_deadband", "double", 0, "Minimum valid speed command", "", &ModelCarControlConfig::speed_deadband)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("speed_deadband", "double", 0, "Minimum valid speed command", "", &ModelCarControlConfig::speed_deadband)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.watchdog_time = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.watchdog_time = 1000.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.watchdog_time = 0.5;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("watchdog_time", "double", 0, "Maximum time between two control commands", "", &ModelCarControlConfig::watchdog_time)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("watchdog_time", "double", 0, "Maximum time between two control commands", "", &ModelCarControlConfig::watchdog_time)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.axel_distance = 0.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.axel_distance = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.axel_distance = 0.36;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("axel_distance", "double", 0, "Distance between the two axels in meters", "", &ModelCarControlConfig::axel_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("axel_distance", "double", 0, "Distance between the two axels in meters", "", &ModelCarControlConfig::axel_distance)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_steer_angle = -1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_steer_angle = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_steer_angle = 0.4;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("max_steer_angle", "double", 0, "Maximum steering angle", "", &ModelCarControlConfig::max_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("max_steer_angle", "double", 0, "Maximum steering angle", "", &ModelCarControlConfig::max_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_steer_angle = -1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_steer_angle = 1.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_steer_angle = -0.4;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("min_steer_angle", "double", 0, "Minimum steering angle", "", &ModelCarControlConfig::min_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("min_steer_angle", "double", 0, "Minimum steering angle", "", &ModelCarControlConfig::min_steer_angle)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_speed_control = -100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_speed_control = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_speed_control = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("max_speed_control", "double", 0, "Maximum output speed command value", "", &ModelCarControlConfig::max_speed_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("max_speed_control", "double", 0, "Maximum output speed command value", "", &ModelCarControlConfig::max_speed_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_speed_control = -100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_speed_control = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_speed_control = -10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("min_speed_control", "double", 0, "Minimum output speed command value", "", &ModelCarControlConfig::min_speed_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("min_speed_control", "double", 0, "Minimum output speed command value", "", &ModelCarControlConfig::min_speed_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_steer_control = -100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_steer_control = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_steer_control = 10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("max_steer_control", "double", 0, "Maximum output steer command value", "", &ModelCarControlConfig::max_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("max_steer_control", "double", 0, "Maximum output steer command value", "", &ModelCarControlConfig::max_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_steer_control = -100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_steer_control = 100.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_steer_control = -10.0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("min_steer_control", "double", 0, "Minimum output steer command value", "", &ModelCarControlConfig::min_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<double>("min_steer_control", "double", 0, "Minimum output steer command value", "", &ModelCarControlConfig::min_steer_control)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.use_steer_angle_cmd = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.use_steer_angle_cmd = 1;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.use_steer_angle_cmd = 0;
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<bool>("use_steer_angle_cmd", "bool", 0, "Whether to use steer angle or angular speed as input", "", &ModelCarControlConfig::use_steer_angle_cmd)));
//#line 291 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(ModelCarControlConfig::AbstractParamDescriptionConstPtr(new ModelCarControlConfig::ParamDescription<bool>("use_steer_angle_cmd", "bool", 0, "Whether to use steer angle or angular speed as input", "", &ModelCarControlConfig::use_steer_angle_cmd)));
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 246 "/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(ModelCarControlConfig::AbstractGroupDescriptionConstPtr(new ModelCarControlConfig::GroupDescription<ModelCarControlConfig::DEFAULT, ModelCarControlConfig>(Default)));
//#line 366 "/opt/ros/melodic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<ModelCarControlConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<ModelCarControlConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<ModelCarControlConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    ModelCarControlConfig __max__;
    ModelCarControlConfig __min__;
    ModelCarControlConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const ModelCarControlConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static ModelCarControlConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &ModelCarControlConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const ModelCarControlConfig &ModelCarControlConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const ModelCarControlConfig &ModelCarControlConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const ModelCarControlConfig &ModelCarControlConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<ModelCarControlConfig::AbstractParamDescriptionConstPtr> &ModelCarControlConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<ModelCarControlConfig::AbstractGroupDescriptionConstPtr> &ModelCarControlConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const ModelCarControlConfigStatics *ModelCarControlConfig::__get_statics__()
  {
    const static ModelCarControlConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = ModelCarControlConfigStatics::get_instance();

    return statics;
  }


}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __MODELCARCONTROLRECONFIGURATOR_H__
