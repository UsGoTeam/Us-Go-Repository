// Generated by gencpp from file iri_adc_msgs/adc_goal_array.msg
// DO NOT EDIT!


#ifndef IRI_ADC_MSGS_MESSAGE_ADC_GOAL_ARRAY_H
#define IRI_ADC_MSGS_MESSAGE_ADC_GOAL_ARRAY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <iri_adc_msgs/adc_goal.h>

namespace iri_adc_msgs
{
template <class ContainerAllocator>
struct adc_goal_array_
{
  typedef adc_goal_array_<ContainerAllocator> Type;

  adc_goal_array_()
    : header()
    , goals()  {
    }
  adc_goal_array_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goals(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::iri_adc_msgs::adc_goal_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::iri_adc_msgs::adc_goal_<ContainerAllocator> >> _goals_type;
  _goals_type goals;





  typedef boost::shared_ptr< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> const> ConstPtr;

}; // struct adc_goal_array_

typedef ::iri_adc_msgs::adc_goal_array_<std::allocator<void> > adc_goal_array;

typedef boost::shared_ptr< ::iri_adc_msgs::adc_goal_array > adc_goal_arrayPtr;
typedef boost::shared_ptr< ::iri_adc_msgs::adc_goal_array const> adc_goal_arrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator1> & lhs, const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goals == rhs.goals;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator1> & lhs, const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iri_adc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c4c070bca6927a2df953aeda1b99b77a";
  }

  static const char* value(const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc4c070bca6927a2dULL;
  static const uint64_t static_value2 = 0xf953aeda1b99b77aULL;
};

template<class ContainerAllocator>
struct DataType< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iri_adc_msgs/adc_goal_array";
  }

  static const char* value(const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header     header\n"
"adc_goal[] goals\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: iri_adc_msgs/adc_goal\n"
"#type definitions\n"
"uint8 PASSTHROUGH_GOAL=0\n"
"uint8 STOP_GOAL=1\n"
"uint8 PARKING_GOAL=2\n"
"\n"
"string id       # goal identifier\n"
"float32 x       # x coordinates in meters [m]\n"
"float32 y       # y coordinate in meters [m]\n"
"float32 yaw     # yaw orientation in radians [rad]\n"
"int32 type      # see type definitions above\n"
;
  }

  static const char* value(const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goals);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct adc_goal_array_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iri_adc_msgs::adc_goal_array_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iri_adc_msgs::adc_goal_array_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goals[]" << std::endl;
    for (size_t i = 0; i < v.goals.size(); ++i)
    {
      s << indent << "  goals[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::iri_adc_msgs::adc_goal_<ContainerAllocator> >::stream(s, indent + "    ", v.goals[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRI_ADC_MSGS_MESSAGE_ADC_GOAL_ARRAY_H
