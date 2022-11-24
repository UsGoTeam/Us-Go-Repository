// Generated by gencpp from file iri_adc_msgs/set_semaphoreRequest.msg
// DO NOT EDIT!


#ifndef IRI_ADC_MSGS_MESSAGE_SET_SEMAPHOREREQUEST_H
#define IRI_ADC_MSGS_MESSAGE_SET_SEMAPHOREREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace iri_adc_msgs
{
template <class ContainerAllocator>
struct set_semaphoreRequest_
{
  typedef set_semaphoreRequest_<ContainerAllocator> Type;

  set_semaphoreRequest_()
    : color(0)  {
    }
  set_semaphoreRequest_(const ContainerAllocator& _alloc)
    : color(0)  {
  (void)_alloc;
    }



   typedef uint8_t _color_type;
  _color_type color;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(SEM_OFF)
  #undef SEM_OFF
#endif
#if defined(_WIN32) && defined(SEM_RED)
  #undef SEM_RED
#endif
#if defined(_WIN32) && defined(SEM_GREEN)
  #undef SEM_GREEN
#endif
#if defined(_WIN32) && defined(SEM_ORANGE_BLINK)
  #undef SEM_ORANGE_BLINK
#endif

  enum {
    SEM_OFF = 0u,
    SEM_RED = 1u,
    SEM_GREEN = 2u,
    SEM_ORANGE_BLINK = 3u,
  };


  typedef boost::shared_ptr< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> const> ConstPtr;

}; // struct set_semaphoreRequest_

typedef ::iri_adc_msgs::set_semaphoreRequest_<std::allocator<void> > set_semaphoreRequest;

typedef boost::shared_ptr< ::iri_adc_msgs::set_semaphoreRequest > set_semaphoreRequestPtr;
typedef boost::shared_ptr< ::iri_adc_msgs::set_semaphoreRequest const> set_semaphoreRequestConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator1> & lhs, const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator2> & rhs)
{
  return lhs.color == rhs.color;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator1> & lhs, const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace iri_adc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a2c1112df73325ba59340ec2e040a3c";
  }

  static const char* value(const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a2c1112df73325bULL;
  static const uint64_t static_value2 = 0xa59340ec2e040a3cULL;
};

template<class ContainerAllocator>
struct DataType< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "iri_adc_msgs/set_semaphoreRequest";
  }

  static const char* value(const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 SEM_OFF = 0\n"
"uint8 SEM_RED = 1\n"
"uint8 SEM_GREEN = 2\n"
"uint8 SEM_ORANGE_BLINK = 3\n"
"\n"
"uint8 color\n"
;
  }

  static const char* value(const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct set_semaphoreRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::iri_adc_msgs::set_semaphoreRequest_<ContainerAllocator>& v)
  {
    s << indent << "color: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.color);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IRI_ADC_MSGS_MESSAGE_SET_SEMAPHOREREQUEST_H
