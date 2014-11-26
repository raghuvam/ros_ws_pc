; Auto-generated. Do not edit!


(cl:in-package catch_the_ball-srv)


;//! \htmlinclude Catch-request.msg.html

(cl:defclass <Catch-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Catch-request (<Catch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Catch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Catch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catch_the_ball-srv:<Catch-request> is deprecated: use catch_the_ball-srv:Catch-request instead.")))

(cl:ensure-generic-function 'From-val :lambda-list '(m))
(cl:defmethod From-val ((m <Catch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-srv:From-val is deprecated.  Use catch_the_ball-srv:From instead.")
  (From m))

(cl:ensure-generic-function 'To-val :lambda-list '(m))
(cl:defmethod To-val ((m <Catch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-srv:To-val is deprecated.  Use catch_the_ball-srv:To instead.")
  (To m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Catch-request>) ostream)
  "Serializes a message object of type '<Catch-request>"
  (cl:let* ((signed (cl:slot-value msg 'From)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'To)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Catch-request>) istream)
  "Deserializes a message object of type '<Catch-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'From) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'To) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Catch-request>)))
  "Returns string type for a service object of type '<Catch-request>"
  "catch_the_ball/CatchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Catch-request)))
  "Returns string type for a service object of type 'Catch-request"
  "catch_the_ball/CatchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Catch-request>)))
  "Returns md5sum for a message object of type '<Catch-request>"
  "4f3137020520bca147028c768ae8e830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Catch-request)))
  "Returns md5sum for a message object of type 'Catch-request"
  "4f3137020520bca147028c768ae8e830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Catch-request>)))
  "Returns full string definition for message of type '<Catch-request>"
  (cl:format cl:nil "int8 From~%int8 To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Catch-request)))
  "Returns full string definition for message of type 'Catch-request"
  (cl:format cl:nil "int8 From~%int8 To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Catch-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Catch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Catch-request
    (cl:cons ':From (From msg))
    (cl:cons ':To (To msg))
))
;//! \htmlinclude Catch-response.msg.html

(cl:defclass <Catch-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Catch-response (<Catch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Catch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Catch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catch_the_ball-srv:<Catch-response> is deprecated: use catch_the_ball-srv:Catch-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Catch-response>) ostream)
  "Serializes a message object of type '<Catch-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Catch-response>) istream)
  "Deserializes a message object of type '<Catch-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Catch-response>)))
  "Returns string type for a service object of type '<Catch-response>"
  "catch_the_ball/CatchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Catch-response)))
  "Returns string type for a service object of type 'Catch-response"
  "catch_the_ball/CatchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Catch-response>)))
  "Returns md5sum for a message object of type '<Catch-response>"
  "4f3137020520bca147028c768ae8e830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Catch-response)))
  "Returns md5sum for a message object of type 'Catch-response"
  "4f3137020520bca147028c768ae8e830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Catch-response>)))
  "Returns full string definition for message of type '<Catch-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Catch-response)))
  "Returns full string definition for message of type 'Catch-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Catch-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Catch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Catch-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Catch)))
  'Catch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Catch)))
  'Catch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Catch)))
  "Returns string type for a service object of type '<Catch>"
  "catch_the_ball/Catch")