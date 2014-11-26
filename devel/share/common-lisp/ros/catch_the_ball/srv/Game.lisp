; Auto-generated. Do not edit!


(cl:in-package catch_the_ball-srv)


;//! \htmlinclude Game-request.msg.html

(cl:defclass <Game-request> (roslisp-msg-protocol:ros-message)
  ((option
    :reader option
    :initarg :option
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Game-request (<Game-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Game-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Game-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catch_the_ball-srv:<Game-request> is deprecated: use catch_the_ball-srv:Game-request instead.")))

(cl:ensure-generic-function 'option-val :lambda-list '(m))
(cl:defmethod option-val ((m <Game-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-srv:option-val is deprecated.  Use catch_the_ball-srv:option instead.")
  (option m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Game-request>) ostream)
  "Serializes a message object of type '<Game-request>"
  (cl:let* ((signed (cl:slot-value msg 'option)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Game-request>) istream)
  "Deserializes a message object of type '<Game-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'option) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Game-request>)))
  "Returns string type for a service object of type '<Game-request>"
  "catch_the_ball/GameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Game-request)))
  "Returns string type for a service object of type 'Game-request"
  "catch_the_ball/GameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Game-request>)))
  "Returns md5sum for a message object of type '<Game-request>"
  "06b5d771499b90bd191ee334e724e45b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Game-request)))
  "Returns md5sum for a message object of type 'Game-request"
  "06b5d771499b90bd191ee334e724e45b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Game-request>)))
  "Returns full string definition for message of type '<Game-request>"
  (cl:format cl:nil "int8 option~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Game-request)))
  "Returns full string definition for message of type 'Game-request"
  (cl:format cl:nil "int8 option~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Game-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Game-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Game-request
    (cl:cons ':option (option msg))
))
;//! \htmlinclude Game-response.msg.html

(cl:defclass <Game-response> (roslisp-msg-protocol:ros-message)
  ((playerCount
    :reader playerCount
    :initarg :playerCount
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Game-response (<Game-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Game-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Game-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catch_the_ball-srv:<Game-response> is deprecated: use catch_the_ball-srv:Game-response instead.")))

(cl:ensure-generic-function 'playerCount-val :lambda-list '(m))
(cl:defmethod playerCount-val ((m <Game-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-srv:playerCount-val is deprecated.  Use catch_the_ball-srv:playerCount instead.")
  (playerCount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Game-response>) ostream)
  "Serializes a message object of type '<Game-response>"
  (cl:let* ((signed (cl:slot-value msg 'playerCount)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Game-response>) istream)
  "Deserializes a message object of type '<Game-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'playerCount) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Game-response>)))
  "Returns string type for a service object of type '<Game-response>"
  "catch_the_ball/GameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Game-response)))
  "Returns string type for a service object of type 'Game-response"
  "catch_the_ball/GameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Game-response>)))
  "Returns md5sum for a message object of type '<Game-response>"
  "06b5d771499b90bd191ee334e724e45b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Game-response)))
  "Returns md5sum for a message object of type 'Game-response"
  "06b5d771499b90bd191ee334e724e45b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Game-response>)))
  "Returns full string definition for message of type '<Game-response>"
  (cl:format cl:nil "int8 playerCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Game-response)))
  "Returns full string definition for message of type 'Game-response"
  (cl:format cl:nil "int8 playerCount~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Game-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Game-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Game-response
    (cl:cons ':playerCount (playerCount msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Game)))
  'Game-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Game)))
  'Game-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Game)))
  "Returns string type for a service object of type '<Game>"
  "catch_the_ball/Game")