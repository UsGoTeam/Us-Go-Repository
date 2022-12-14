// Generated by gencpp from file iri_adc_msgs/set_string.msg
// DO NOT EDIT!


#ifndef IRI_ADC_MSGS_MESSAGE_SET_STRING_H
#define IRI_ADC_MSGS_MESSAGE_SET_STRING_H

#include <ros/service_traits.h>


#include <iri_adc_msgs/set_stringRequest.h>
#include <iri_adc_msgs/set_stringResponse.h>


namespace iri_adc_msgs
{

struct set_string
{

typedef set_stringRequest Request;
typedef set_stringResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct set_string
} // namespace iri_adc_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iri_adc_msgs::set_string > {
  static const char* value()
  {
    return "546971982e3fbbd5a41e60fb6432e357";
  }

  static const char* value(const ::iri_adc_msgs::set_string&) { return value(); }
};

template<>
struct DataType< ::iri_adc_msgs::set_string > {
  static const char* value()
  {
    return "iri_adc_msgs/set_string";
  }

  static const char* value(const ::iri_adc_msgs::set_string&) { return value(); }
};


// service_traits::MD5Sum< ::iri_adc_msgs::set_stringRequest> should match
// service_traits::MD5Sum< ::iri_adc_msgs::set_string >
template<>
struct MD5Sum< ::iri_adc_msgs::set_stringRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iri_adc_msgs::set_string >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_stringRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iri_adc_msgs::set_stringRequest> should match
// service_traits::DataType< ::iri_adc_msgs::set_string >
template<>
struct DataType< ::iri_adc_msgs::set_stringRequest>
{
  static const char* value()
  {
    return DataType< ::iri_adc_msgs::set_string >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_stringRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iri_adc_msgs::set_stringResponse> should match
// service_traits::MD5Sum< ::iri_adc_msgs::set_string >
template<>
struct MD5Sum< ::iri_adc_msgs::set_stringResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iri_adc_msgs::set_string >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_stringResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iri_adc_msgs::set_stringResponse> should match
// service_traits::DataType< ::iri_adc_msgs::set_string >
template<>
struct DataType< ::iri_adc_msgs::set_stringResponse>
{
  static const char* value()
  {
    return DataType< ::iri_adc_msgs::set_string >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_stringResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IRI_ADC_MSGS_MESSAGE_SET_STRING_H
