; Auto-generated. Do not edit!


(cl:in-package jpeg_viewer-msg)


;//! \htmlinclude jpeg_info.msg.html

(cl:defclass <jpeg_info> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass jpeg_info (<jpeg_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <jpeg_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'jpeg_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jpeg_viewer-msg:<jpeg_info> is deprecated: use jpeg_viewer-msg:jpeg_info instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <jpeg_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jpeg_viewer-msg:num-val is deprecated.  Use jpeg_viewer-msg:num instead.")
  (num m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <jpeg_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jpeg_viewer-msg:data-val is deprecated.  Use jpeg_viewer-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <jpeg_info>) ostream)
  "Serializes a message object of type '<jpeg_info>"
  (cl:let* ((signed (cl:slot-value msg 'num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <jpeg_info>) istream)
  "Deserializes a message object of type '<jpeg_info>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<jpeg_info>)))
  "Returns string type for a message object of type '<jpeg_info>"
  "jpeg_viewer/jpeg_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'jpeg_info)))
  "Returns string type for a message object of type 'jpeg_info"
  "jpeg_viewer/jpeg_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<jpeg_info>)))
  "Returns md5sum for a message object of type '<jpeg_info>"
  "60389719dc0cc8c07cfe07d27a0dc5a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'jpeg_info)))
  "Returns md5sum for a message object of type 'jpeg_info"
  "60389719dc0cc8c07cfe07d27a0dc5a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<jpeg_info>)))
  "Returns full string definition for message of type '<jpeg_info>"
  (cl:format cl:nil "int64 num~%int64 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'jpeg_info)))
  "Returns full string definition for message of type 'jpeg_info"
  (cl:format cl:nil "int64 num~%int64 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <jpeg_info>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <jpeg_info>))
  "Converts a ROS message object to a list"
  (cl:list 'jpeg_info
    (cl:cons ':num (num msg))
    (cl:cons ':data (data msg))
))
