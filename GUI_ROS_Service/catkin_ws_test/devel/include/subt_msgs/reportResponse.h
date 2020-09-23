// Generated by gencpp from file subt_msgs/reportResponse.msg
// DO NOT EDIT!


#ifndef SUBT_MSGS_MESSAGE_REPORTRESPONSE_H
#define SUBT_MSGS_MESSAGE_REPORTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace subt_msgs
{
template <class ContainerAllocator>
struct reportResponse_
{
  typedef reportResponse_<ContainerAllocator> Type;

  reportResponse_()
    : result()  {
    }
  reportResponse_(const ContainerAllocator& _alloc)
    : result(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::subt_msgs::reportResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::subt_msgs::reportResponse_<ContainerAllocator> const> ConstPtr;

}; // struct reportResponse_

typedef ::subt_msgs::reportResponse_<std::allocator<void> > reportResponse;

typedef boost::shared_ptr< ::subt_msgs::reportResponse > reportResponsePtr;
typedef boost::shared_ptr< ::subt_msgs::reportResponse const> reportResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::subt_msgs::reportResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::subt_msgs::reportResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::subt_msgs::reportResponse_<ContainerAllocator1> & lhs, const ::subt_msgs::reportResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::subt_msgs::reportResponse_<ContainerAllocator1> & lhs, const ::subt_msgs::reportResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace subt_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::subt_msgs::reportResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::subt_msgs::reportResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::subt_msgs::reportResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::subt_msgs::reportResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::subt_msgs::reportResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::subt_msgs::reportResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::subt_msgs::reportResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c22f2a1ed8654a0b365f1bb3f7ff2c0f";
  }

  static const char* value(const ::subt_msgs::reportResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc22f2a1ed8654a0bULL;
  static const uint64_t static_value2 = 0x365f1bb3f7ff2c0fULL;
};

template<class ContainerAllocator>
struct DataType< ::subt_msgs::reportResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "subt_msgs/reportResponse";
  }

  static const char* value(const ::subt_msgs::reportResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::subt_msgs::reportResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Response data\n"
"string result\n"
"\n"
;
  }

  static const char* value(const ::subt_msgs::reportResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::subt_msgs::reportResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct reportResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::subt_msgs::reportResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::subt_msgs::reportResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUBT_MSGS_MESSAGE_REPORTRESPONSE_H
