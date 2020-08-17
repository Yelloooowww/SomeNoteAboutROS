; Auto-generated. Do not edit!


(cl:in-package pkg_cv-srv)


;//! \htmlinclude img_srv-request.msg.html

(cl:defclass <img_srv-request> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (point
    :reader point
    :initarg :point
    :type cl:integer
    :initform 0)
   (on_off
    :reader on_off
    :initarg :on_off
    :type cl:integer
    :initform 0))
)

(cl:defclass img_srv-request (<img_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <img_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'img_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_cv-srv:<img_srv-request> is deprecated: use pkg_cv-srv:img_srv-request instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <img_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_cv-srv:color-val is deprecated.  Use pkg_cv-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <img_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_cv-srv:point-val is deprecated.  Use pkg_cv-srv:point instead.")
  (point m))

(cl:ensure-generic-function 'on_off-val :lambda-list '(m))
(cl:defmethod on_off-val ((m <img_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_cv-srv:on_off-val is deprecated.  Use pkg_cv-srv:on_off instead.")
  (on_off m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <img_srv-request>) ostream)
  "Serializes a message object of type '<img_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let* ((signed (cl:slot-value msg 'point)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'on_off)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <img_srv-request>) istream)
  "Deserializes a message object of type '<img_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'on_off) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<img_srv-request>)))
  "Returns string type for a service object of type '<img_srv-request>"
  "pkg_cv/img_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'img_srv-request)))
  "Returns string type for a service object of type 'img_srv-request"
  "pkg_cv/img_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<img_srv-request>)))
  "Returns md5sum for a message object of type '<img_srv-request>"
  "01d253bb9c4556a79a141bb7d6d1c6cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'img_srv-request)))
  "Returns md5sum for a message object of type 'img_srv-request"
  "01d253bb9c4556a79a141bb7d6d1c6cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<img_srv-request>)))
  "Returns full string definition for message of type '<img_srv-request>"
  (cl:format cl:nil "string color~%int64 point~%int64 on_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'img_srv-request)))
  "Returns full string definition for message of type 'img_srv-request"
  (cl:format cl:nil "string color~%int64 point~%int64 on_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <img_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'color))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <img_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'img_srv-request
    (cl:cons ':color (color msg))
    (cl:cons ':point (point msg))
    (cl:cons ':on_off (on_off msg))
))
;//! \htmlinclude img_srv-response.msg.html

(cl:defclass <img_srv-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:integer
    :initform 0))
)

(cl:defclass img_srv-response (<img_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <img_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'img_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_cv-srv:<img_srv-response> is deprecated: use pkg_cv-srv:img_srv-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <img_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_cv-srv:response-val is deprecated.  Use pkg_cv-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <img_srv-response>) ostream)
  "Serializes a message object of type '<img_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'response)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <img_srv-response>) istream)
  "Deserializes a message object of type '<img_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<img_srv-response>)))
  "Returns string type for a service object of type '<img_srv-response>"
  "pkg_cv/img_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'img_srv-response)))
  "Returns string type for a service object of type 'img_srv-response"
  "pkg_cv/img_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<img_srv-response>)))
  "Returns md5sum for a message object of type '<img_srv-response>"
  "01d253bb9c4556a79a141bb7d6d1c6cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'img_srv-response)))
  "Returns md5sum for a message object of type 'img_srv-response"
  "01d253bb9c4556a79a141bb7d6d1c6cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<img_srv-response>)))
  "Returns full string definition for message of type '<img_srv-response>"
  (cl:format cl:nil "int64 response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'img_srv-response)))
  "Returns full string definition for message of type 'img_srv-response"
  (cl:format cl:nil "int64 response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <img_srv-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <img_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'img_srv-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'img_srv)))
  'img_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'img_srv)))
  'img_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'img_srv)))
  "Returns string type for a service object of type '<img_srv>"
  "pkg_cv/img_srv")