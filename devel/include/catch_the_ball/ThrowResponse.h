/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /user/x0221391/ros_ws/src/catch_the_ball/srv/Throw.srv
 *
 */


#ifndef CATCH_THE_BALL_MESSAGE_THROWRESPONSE_H
#define CATCH_THE_BALL_MESSAGE_THROWRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace catch_the_ball
{
template <class ContainerAllocator>
struct ThrowResponse_
{
  typedef ThrowResponse_<ContainerAllocator> Type;

  ThrowResponse_()
    : threw(false)  {
    }
  ThrowResponse_(const ContainerAllocator& _alloc)
    : threw(false)  {
    }



   typedef uint8_t _threw_type;
  _threw_type threw;




  typedef boost::shared_ptr< ::catch_the_ball::ThrowResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::catch_the_ball::ThrowResponse_<ContainerAllocator> const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;

}; // struct ThrowResponse_

typedef ::catch_the_ball::ThrowResponse_<std::allocator<void> > ThrowResponse;

typedef boost::shared_ptr< ::catch_the_ball::ThrowResponse > ThrowResponsePtr;
typedef boost::shared_ptr< ::catch_the_ball::ThrowResponse const> ThrowResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::catch_the_ball::ThrowResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace catch_the_ball

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/hydro/share/std_msgs/cmake/../msg'], 'catch_the_ball': ['/user/x0221391/ros_ws/src/catch_the_ball/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::catch_the_ball::ThrowResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::catch_the_ball::ThrowResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::catch_the_ball::ThrowResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "603043e31cd4e0da8ff0a4d47d5c23a3";
  }

  static const char* value(const ::catch_the_ball::ThrowResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x603043e31cd4e0daULL;
  static const uint64_t static_value2 = 0x8ff0a4d47d5c23a3ULL;
};

template<class ContainerAllocator>
struct DataType< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "catch_the_ball/ThrowResponse";
  }

  static const char* value(const ::catch_the_ball::ThrowResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool threw\n\
";
  }

  static const char* value(const ::catch_the_ball::ThrowResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.threw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ThrowResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::catch_the_ball::ThrowResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::catch_the_ball::ThrowResponse_<ContainerAllocator>& v)
  {
    s << indent << "threw: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.threw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CATCH_THE_BALL_MESSAGE_THROWRESPONSE_H
