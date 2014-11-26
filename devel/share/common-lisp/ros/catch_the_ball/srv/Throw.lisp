; Auto-generated. Do not edit!


(cl:in-package catch_the_ball-srv)


;//! \htmlinclude Throw-request.msg.html

(cl:defclass <Throw-request> (roslisp-msg-protocol:ros-message)
  ((fromPlayer
    :reader fromPlayer
    :initarg :fromPlayer
    :type cl:fixnum
    :initform 0)
   (playerID
    :reader playerID
    :initarg :playerID
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Throw-request (<Throw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Throw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Throw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catch_the_ball-srv:<Throw-request> is deprecated: use catch_the_ball-srv:Throw-request instead.")))

(cl:ensure-generic-function 'fromPlayer-val :lambda-list '(m))
(cl:defmethod fromPlayer-val ((m <Throw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-srv:fromPlayer-val is deprecated.  Use catch_the_ball-srv:fromPlayer instead.")
  (fromPlayer m))

(cl:ensure-generic-function 'playerID-val :lambda-list '(m))
(cl:defmethod playerID-val ((m <Throw-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-srv:playerID-val is deprecated.  Use catch_the_ball-srv:playerID instead.")
  (playerID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Throw-request>) ostream)
  "Serializes a message object of type '<Throw-request>"
  (cl:let* ((signed (cl:slot-value msg 'fromPlayer)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'playerID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Throw-request>) istream)
  "Deserializes a message object of type '<Throw-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fromPlayer) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'playerID) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Throw-request>)))
  "Returns string type for a service object of type '<Throw-request>"
  "catch_the_ball/ThrowRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Throw-request)))
  "Returns string type for a service object of type 'Throw-request"
  "catch_the_ball/ThrowRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Throw-request>)))
  "Returns md5sum for a message object of type '<Throw-request>"
  "0d454b12faaf5b34cc431d6fe22cf601")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Throw-request)))
  "Returns md5sum for a message object of type 'Throw-request"
  "0d454b12faaf5b34cc431d6fe22cf601")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Throw-request>)))
  "Returns full string definition for message of type '<Throw-request>"
  (cl:format cl:nil "int8 fromPlayer~%int8 playerID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Throw-request)))
  "Returns full string definition for message of type 'Throw-request"
  (cl:format cl:nil "int8 fromPlayer~%int8 playerID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Throw-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Throw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Throw-request
    (cl:cons ':fromPlayer (fromPlayer msg))
    (cl:cons ':playerID (playerID msg))
))
;//! \htmlinclude Throw-response.msg.html

(cl:defclass <Throw-response> (roslisp-msg-protocol:ros-message)
  ((threw
    :reader threw
    :initarg :threw
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Throw-response (<Throw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Throw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Throw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catch_the_ball-srv:<Throw-response> is deprecated: use catch_the_ball-srv:Throw-response instead.")))

(cl:ensure-generic-function 'threw-val :lambda-list '(m))
(cl:defmethod threw-val ((m <Throw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catch_the_ball-srv:threw-val is deprecated.  Use catch_the_ball-srv:threw instead.")
  (threw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Throw-response>) ostream)
  "Serializes a message object of type '<Throw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'threw) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Throw-response>) istream)
  "Deserializes a message object of type '<Throw-response>"
    (cl:setf (cl:slot-value msg 'threw) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Throw-response>)))
  "Returns string type for a service object of type '<Throw-response>"
  "catch_the_ball/ThrowResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Throw-response)))
  "Returns string type for a service object of type 'Throw-response"
  "catch_the_ball/ThrowResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Throw-response>)))
  "Returns md5sum for a message object of type '<Throw-response>"
  "0d454b12faaf5b34cc431d6fe22cf601")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Throw-response)))
  "Returns md5sum for a message object of type 'Throw-response"
  "0d454b12faaf5b34cc431d6fe22cf601")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Throw-response>)))
  "Returns full string definition for message of type '<Throw-response>"
  (cl:format cl:nil "bool threw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Throw-response)))
  "Returns full string definition for message of type 'Throw-response"
  (cl:format cl:nil "bool threw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Throw-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Throw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Throw-response
    (cl:cons ':threw (threw msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Throw)))
  'Throw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Throw)))
  'Throw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Throw)))
  "Returns string type for a service object of type '<Throw>"
  "catch_the_ball/Throw")