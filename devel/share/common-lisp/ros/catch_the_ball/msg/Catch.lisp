; Auto-generated. Do not edit!


(cl:in-package catch_the_ball-msg)


;//! \htmlinclude Catch.msg.html

(cl:defclass <Catch> (roslisp-msg-protocol:ros-message)
  ((From
    :reader From
    :initarg :From
    :type cl:fixnum
    :initform 0)
   (To
    :reader To
    :initarg :To
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Catch (<Catch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Catch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Catch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catch_the_ball-msg:<Catch> is deprecated: use catch_the_ball-msg:Catch instead.")))

(cl:ensure-generic-function 'From-val :lambda-list '(m))
(cl:defmethod From-val ((m <Catch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-msg:From-val is deprecated.  Use catch_the_ball-msg:From instead.")
  (From m))

(cl:ensure-generic-function 'To-val :lambda-list '(m))
(cl:defmethod To-val ((m <Catch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-msg:To-val is deprecated.  Use catch_the_ball-msg:To instead.")
  (To m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Catch>) ostream)
  "Serializes a message object of type '<Catch>"
  (cl:let* ((signed (cl:slot-value msg 'From)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'To)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Catch>) istream)
  "Deserializes a message object of type '<Catch>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'From) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'To) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Catch>)))
  "Returns string type for a message object of type '<Catch>"
  "catch_the_ball/Catch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Catch)))
  "Returns string type for a message object of type 'Catch"
  "catch_the_ball/Catch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Catch>)))
  "Returns md5sum for a message object of type '<Catch>"
  "4f3137020520bca147028c768ae8e830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Catch)))
  "Returns md5sum for a message object of type 'Catch"
  "4f3137020520bca147028c768ae8e830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Catch>)))
  "Returns full string definition for message of type '<Catch>"
  (cl:format cl:nil "int8 From~%int8 To~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Catch)))
  "Returns full string definition for message of type 'Catch"
  (cl:format cl:nil "int8 From~%int8 To~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Catch>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Catch>))
  "Converts a ROS message object to a list"
  (cl:list 'Catch
    (cl:cons ':From (From msg))
    (cl:cons ':To (To msg))
))
