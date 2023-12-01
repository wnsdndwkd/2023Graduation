// Generated by gencpp from file kukirun_msgs/PolyFitLane.msg
// DO NOT EDIT!


#ifndef KUKIRUN_MSGS_MESSAGE_POLYFITLANE_H
#define KUKIRUN_MSGS_MESSAGE_POLYFITLANE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace kukirun_msgs
{
template <class ContainerAllocator>
struct PolyFitLane_
{
  typedef PolyFitLane_<ContainerAllocator> Type;

  PolyFitLane_()
    : header()
    , valid(false)
    , max_x(0.0)
    , a0(0.0)
    , a1(0.0)
    , a2(0.0)
    , a3(0.0)  {
    }
  PolyFitLane_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , valid(false)
    , max_x(0.0)
    , a0(0.0)
    , a1(0.0)
    , a2(0.0)
    , a3(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _valid_type;
  _valid_type valid;

   typedef double _max_x_type;
  _max_x_type max_x;

   typedef double _a0_type;
  _a0_type a0;

   typedef double _a1_type;
  _a1_type a1;

   typedef double _a2_type;
  _a2_type a2;

   typedef double _a3_type;
  _a3_type a3;





  typedef boost::shared_ptr< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> const> ConstPtr;

}; // struct PolyFitLane_

typedef ::kukirun_msgs::PolyFitLane_<std::allocator<void> > PolyFitLane;

typedef boost::shared_ptr< ::kukirun_msgs::PolyFitLane > PolyFitLanePtr;
typedef boost::shared_ptr< ::kukirun_msgs::PolyFitLane const> PolyFitLaneConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kukirun_msgs::PolyFitLane_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kukirun_msgs::PolyFitLane_<ContainerAllocator1> & lhs, const ::kukirun_msgs::PolyFitLane_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.valid == rhs.valid &&
    lhs.max_x == rhs.max_x &&
    lhs.a0 == rhs.a0 &&
    lhs.a1 == rhs.a1 &&
    lhs.a2 == rhs.a2 &&
    lhs.a3 == rhs.a3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kukirun_msgs::PolyFitLane_<ContainerAllocator1> & lhs, const ::kukirun_msgs::PolyFitLane_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kukirun_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c97efd66e05a1d80f9559b23b5c8ff5f";
  }

  static const char* value(const ::kukirun_msgs::PolyFitLane_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc97efd66e05a1d80ULL;
  static const uint64_t static_value2 = 0xf9559b23b5c8ff5fULL;
};

template<class ContainerAllocator>
struct DataType< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kukirun_msgs/PolyFitLane";
  }

  static const char* value(const ::kukirun_msgs::PolyFitLane_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"bool valid\n"
"float64 max_x\n"
"float64 a0\n"
"float64 a1\n"
"float64 a2\n"
"float64 a3\n"
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
;
  }

  static const char* value(const ::kukirun_msgs::PolyFitLane_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.valid);
      stream.next(m.max_x);
      stream.next(m.a0);
      stream.next(m.a1);
      stream.next(m.a2);
      stream.next(m.a3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PolyFitLane_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kukirun_msgs::PolyFitLane_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kukirun_msgs::PolyFitLane_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "valid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.valid);
    s << indent << "max_x: ";
    Printer<double>::stream(s, indent + "  ", v.max_x);
    s << indent << "a0: ";
    Printer<double>::stream(s, indent + "  ", v.a0);
    s << indent << "a1: ";
    Printer<double>::stream(s, indent + "  ", v.a1);
    s << indent << "a2: ";
    Printer<double>::stream(s, indent + "  ", v.a2);
    s << indent << "a3: ";
    Printer<double>::stream(s, indent + "  ", v.a3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUKIRUN_MSGS_MESSAGE_POLYFITLANE_H
