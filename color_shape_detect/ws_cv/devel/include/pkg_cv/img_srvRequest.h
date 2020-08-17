// Generated by gencpp from file pkg_cv/img_srvRequest.msg
// DO NOT EDIT!


#ifndef PKG_CV_MESSAGE_IMG_SRVREQUEST_H
#define PKG_CV_MESSAGE_IMG_SRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pkg_cv
{
template <class ContainerAllocator>
struct img_srvRequest_
{
  typedef img_srvRequest_<ContainerAllocator> Type;

  img_srvRequest_()
    : color()
    , point(0)
    , on_off(0)  {
    }
  img_srvRequest_(const ContainerAllocator& _alloc)
    : color(_alloc)
    , point(0)
    , on_off(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _color_type;
  _color_type color;

   typedef int64_t _point_type;
  _point_type point;

   typedef int64_t _on_off_type;
  _on_off_type on_off;





  typedef boost::shared_ptr< ::pkg_cv::img_srvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pkg_cv::img_srvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct img_srvRequest_

typedef ::pkg_cv::img_srvRequest_<std::allocator<void> > img_srvRequest;

typedef boost::shared_ptr< ::pkg_cv::img_srvRequest > img_srvRequestPtr;
typedef boost::shared_ptr< ::pkg_cv::img_srvRequest const> img_srvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pkg_cv::img_srvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pkg_cv::img_srvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pkg_cv::img_srvRequest_<ContainerAllocator1> & lhs, const ::pkg_cv::img_srvRequest_<ContainerAllocator2> & rhs)
{
  return lhs.color == rhs.color &&
    lhs.point == rhs.point &&
    lhs.on_off == rhs.on_off;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pkg_cv::img_srvRequest_<ContainerAllocator1> & lhs, const ::pkg_cv::img_srvRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pkg_cv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pkg_cv::img_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pkg_cv::img_srvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pkg_cv::img_srvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f34a9ecbb0e3182ce5c19faa4043a229";
  }

  static const char* value(const ::pkg_cv::img_srvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf34a9ecbb0e3182cULL;
  static const uint64_t static_value2 = 0xe5c19faa4043a229ULL;
};

template<class ContainerAllocator>
struct DataType< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pkg_cv/img_srvRequest";
  }

  static const char* value(const ::pkg_cv::img_srvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string color\n"
"int64 point\n"
"int64 on_off\n"
;
  }

  static const char* value(const ::pkg_cv::img_srvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.color);
      stream.next(m.point);
      stream.next(m.on_off);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct img_srvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pkg_cv::img_srvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pkg_cv::img_srvRequest_<ContainerAllocator>& v)
  {
    s << indent << "color: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.color);
    s << indent << "point: ";
    Printer<int64_t>::stream(s, indent + "  ", v.point);
    s << indent << "on_off: ";
    Printer<int64_t>::stream(s, indent + "  ", v.on_off);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PKG_CV_MESSAGE_IMG_SRVREQUEST_H
