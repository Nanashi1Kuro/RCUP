// Generated by gencpp from file inverse_problem_srv/point_cmdResponse.msg
// DO NOT EDIT!


#ifndef INVERSE_PROBLEM_SRV_MESSAGE_POINT_CMDRESPONSE_H
#define INVERSE_PROBLEM_SRV_MESSAGE_POINT_CMDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace inverse_problem_srv
{
template <class ContainerAllocator>
struct point_cmdResponse_
{
  typedef point_cmdResponse_<ContainerAllocator> Type;

  point_cmdResponse_()
    : result(false)  {
    }
  point_cmdResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct point_cmdResponse_

typedef ::inverse_problem_srv::point_cmdResponse_<std::allocator<void> > point_cmdResponse;

typedef boost::shared_ptr< ::inverse_problem_srv::point_cmdResponse > point_cmdResponsePtr;
typedef boost::shared_ptr< ::inverse_problem_srv::point_cmdResponse const> point_cmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator1> & lhs, const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator1> & lhs, const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace inverse_problem_srv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "inverse_problem_srv/point_cmdResponse";
  }

  static const char* value(const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool result\n"
"\n"
;
  }

  static const char* value(const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct point_cmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::inverse_problem_srv::point_cmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INVERSE_PROBLEM_SRV_MESSAGE_POINT_CMDRESPONSE_H
