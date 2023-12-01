// Generated by gencpp from file kukirun_msgs/Obstacle.msg
// DO NOT EDIT!


#ifndef KUKIRUN_MSGS_MESSAGE_OBSTACLE_H
#define KUKIRUN_MSGS_MESSAGE_OBSTACLE_H


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
struct Obstacle_
{
  typedef Obstacle_<ContainerAllocator> Type;

  Obstacle_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , radius(0.0)
    , velocity(0.0)  {
    }
  Obstacle_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , radius(0.0)
    , velocity(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _radius_type;
  _radius_type radius;

   typedef float _velocity_type;
  _velocity_type velocity;





  typedef boost::shared_ptr< ::kukirun_msgs::Obstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kukirun_msgs::Obstacle_<ContainerAllocator> const> ConstPtr;

}; // struct Obstacle_

typedef ::kukirun_msgs::Obstacle_<std::allocator<void> > Obstacle;

typedef boost::shared_ptr< ::kukirun_msgs::Obstacle > ObstaclePtr;
typedef boost::shared_ptr< ::kukirun_msgs::Obstacle const> ObstacleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kukirun_msgs::Obstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kukirun_msgs::Obstacle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::kukirun_msgs::Obstacle_<ContainerAllocator1> & lhs, const ::kukirun_msgs::Obstacle_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.radius == rhs.radius &&
    lhs.velocity == rhs.velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::kukirun_msgs::Obstacle_<ContainerAllocator1> & lhs, const ::kukirun_msgs::Obstacle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace kukirun_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kukirun_msgs::Obstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kukirun_msgs::Obstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kukirun_msgs::Obstacle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "931051eedf069559050dad114552e805";
  }

  static const char* value(const ::kukirun_msgs::Obstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x931051eedf069559ULL;
  static const uint64_t static_value2 = 0x050dad114552e805ULL;
};

template<class ContainerAllocator>
struct DataType< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kukirun_msgs/Obstacle";
  }

  static const char* value(const ::kukirun_msgs::Obstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 radius\n"
"float32 velocity\n"
;
  }

  static const char* value(const ::kukirun_msgs::Obstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.radius);
      stream.next(m.velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Obstacle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kukirun_msgs::Obstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kukirun_msgs::Obstacle_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
    s << indent << "velocity: ";
    Printer<float>::stream(s, indent + "  ", v.velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // KUKIRUN_MSGS_MESSAGE_OBSTACLE_H
