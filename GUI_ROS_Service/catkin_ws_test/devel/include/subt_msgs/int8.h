// Generated by gencpp from file subt_msgs/int8.msg
// DO NOT EDIT!


#ifndef SUBT_MSGS_MESSAGE_INT8_H
#define SUBT_MSGS_MESSAGE_INT8_H

#include <ros/service_traits.h>


#include <subt_msgs/int8Request.h>
#include <subt_msgs/int8Response.h>


namespace subt_msgs
{

struct int8
{

typedef int8Request Request;
typedef int8Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct int8
} // namespace subt_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::subt_msgs::int8 > {
  static const char* value()
  {
    return "27ffa0c9c4b8fb8492252bcad9e5c57b";
  }

  static const char* value(const ::subt_msgs::int8&) { return value(); }
};

template<>
struct DataType< ::subt_msgs::int8 > {
  static const char* value()
  {
    return "subt_msgs/int8";
  }

  static const char* value(const ::subt_msgs::int8&) { return value(); }
};


// service_traits::MD5Sum< ::subt_msgs::int8Request> should match
// service_traits::MD5Sum< ::subt_msgs::int8 >
template<>
struct MD5Sum< ::subt_msgs::int8Request>
{
  static const char* value()
  {
    return MD5Sum< ::subt_msgs::int8 >::value();
  }
  static const char* value(const ::subt_msgs::int8Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::subt_msgs::int8Request> should match
// service_traits::DataType< ::subt_msgs::int8 >
template<>
struct DataType< ::subt_msgs::int8Request>
{
  static const char* value()
  {
    return DataType< ::subt_msgs::int8 >::value();
  }
  static const char* value(const ::subt_msgs::int8Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::subt_msgs::int8Response> should match
// service_traits::MD5Sum< ::subt_msgs::int8 >
template<>
struct MD5Sum< ::subt_msgs::int8Response>
{
  static const char* value()
  {
    return MD5Sum< ::subt_msgs::int8 >::value();
  }
  static const char* value(const ::subt_msgs::int8Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::subt_msgs::int8Response> should match
// service_traits::DataType< ::subt_msgs::int8 >
template<>
struct DataType< ::subt_msgs::int8Response>
{
  static const char* value()
  {
    return DataType< ::subt_msgs::int8 >::value();
  }
  static const char* value(const ::subt_msgs::int8Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SUBT_MSGS_MESSAGE_INT8_H