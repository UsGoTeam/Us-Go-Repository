// Generated by gencpp from file iri_adc_msgs/set_goals.msg
// DO NOT EDIT!


#ifndef IRI_ADC_MSGS_MESSAGE_SET_GOALS_H
#define IRI_ADC_MSGS_MESSAGE_SET_GOALS_H

#include <ros/service_traits.h>


#include <iri_adc_msgs/set_goalsRequest.h>
#include <iri_adc_msgs/set_goalsResponse.h>


namespace iri_adc_msgs
{

struct set_goals
{

typedef set_goalsRequest Request;
typedef set_goalsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct set_goals
} // namespace iri_adc_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::iri_adc_msgs::set_goals > {
  static const char* value()
  {
    return "a170b04c96029cb68c3e3ba1b3e16f93";
  }

  static const char* value(const ::iri_adc_msgs::set_goals&) { return value(); }
};

template<>
struct DataType< ::iri_adc_msgs::set_goals > {
  static const char* value()
  {
    return "iri_adc_msgs/set_goals";
  }

  static const char* value(const ::iri_adc_msgs::set_goals&) { return value(); }
};


// service_traits::MD5Sum< ::iri_adc_msgs::set_goalsRequest> should match
// service_traits::MD5Sum< ::iri_adc_msgs::set_goals >
template<>
struct MD5Sum< ::iri_adc_msgs::set_goalsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::iri_adc_msgs::set_goals >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_goalsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::iri_adc_msgs::set_goalsRequest> should match
// service_traits::DataType< ::iri_adc_msgs::set_goals >
template<>
struct DataType< ::iri_adc_msgs::set_goalsRequest>
{
  static const char* value()
  {
    return DataType< ::iri_adc_msgs::set_goals >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_goalsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::iri_adc_msgs::set_goalsResponse> should match
// service_traits::MD5Sum< ::iri_adc_msgs::set_goals >
template<>
struct MD5Sum< ::iri_adc_msgs::set_goalsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::iri_adc_msgs::set_goals >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_goalsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::iri_adc_msgs::set_goalsResponse> should match
// service_traits::DataType< ::iri_adc_msgs::set_goals >
template<>
struct DataType< ::iri_adc_msgs::set_goalsResponse>
{
  static const char* value()
  {
    return DataType< ::iri_adc_msgs::set_goals >::value();
  }
  static const char* value(const ::iri_adc_msgs::set_goalsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IRI_ADC_MSGS_MESSAGE_SET_GOALS_H
