// Generated by gencpp from file kukirun_msgs/Turn.msg
// DO NOT EDIT!


#ifndef KUKIRUN_MSGS_MESSAGE_TURN_H
#define KUKIRUN_MSGS_MESSAGE_TURN_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace kukirun_msgs
{
template <class ContainerAllocator>
struct Turn_
{
  typedef Turn_<ContainerAllocator> Type;

  Turn_()
    : exist(false)  {
    }
  Turn_(const ContainerAllocator& _alloc)
    : exist(false)  {
  (void)_alloc;
    }



   typedef uint8_t _exist_type;
  _exist_type exist;





  typedef boost::shared_ptr< ::kukirun_msgs::Turn_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kukirun_msgs::Turn_<ContainerAllocator> const> ConstPtr;

}; // struct Turn_

typedef ::kukirun_msgs::Turn_<std::allocator<void> > Turn;

typedef boost::shared_ptr< ::kukirun_msgs::Turn > TurnPtr;
typedef boost::shared_ptr< ::kukirun_msgs::Turn const> TurnConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kukirun_msgs::Turn_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kukirun_msgs::Turn_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kukirun_msgs::Turn_<ContainerAllocator1> & lhs, const ::kukirun_msgs::Turn_<ContainerAllocator2> & rhs)
{
  return lhs.exist == rhs.exist;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kukirun_msgs::Turn_<ContainerAllocator1> & lhs, const ::kukirun_msgs::Turn_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kukirun_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kukirun_msgs::Turn_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kukirun_msgs::Turn_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kukirun_msgs::Turn_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kukirun_msgs::Turn_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kukirun_msgs::Turn_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kukirun_msgs::Turn_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kukirun_msgs::Turn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86055aa20f8115cdfd4917a9e28d29bb";
  }

  static const char* value(const ::kukirun_msgs::Turn_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86055aa20f8115cdULL;
  static const uint64_t static_value2 = 0xfd4917a9e28d29bbULL;
};

template<class ContainerAllocator>
struct DataType< ::kukirun_msgs::Turn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kukirun_msgs/Turn";
  }

  static const char* value(const ::kukirun_msgs::Turn_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kukirun_msgs::Turn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool exist\n"
;
  }

  static const char* value(const ::kukirun_msgs::Turn_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kukirun_msgs::Turn_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.exist);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Turn_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kukirun_msgs::Turn_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kukirun_msgs::Turn_<ContainerAllocator>& v)
  {
    s << indent << "exist: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.exist);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUKIRUN_MSGS_MESSAGE_TURN_H
