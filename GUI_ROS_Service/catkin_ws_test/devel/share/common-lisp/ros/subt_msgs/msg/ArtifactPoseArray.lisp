; Auto-generated. Do not edit!


(cl:in-package subt_msgs-msg)


;//! \htmlinclude ArtifactPoseArray.msg.html

(cl:defclass <ArtifactPoseArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (camera
    :reader camera
    :initarg :camera
    :type cl:string
    :initform "")
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (pose_array
    :reader pose_array
    :initarg :pose_array
    :type (cl:vector subt_msgs-msg:ArtifactPose)
   :initform (cl:make-array 0 :element-type 'subt_msgs-msg:ArtifactPose :initial-element (cl:make-instance 'subt_msgs-msg:ArtifactPose))))
)

(cl:defclass ArtifactPoseArray (<ArtifactPoseArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArtifactPoseArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArtifactPoseArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name subt_msgs-msg:<ArtifactPoseArray> is deprecated: use subt_msgs-msg:ArtifactPoseArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArtifactPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader subt_msgs-msg:header-val is deprecated.  Use subt_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <ArtifactPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader subt_msgs-msg:camera-val is deprecated.  Use subt_msgs-msg:camera instead.")
  (camera m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <ArtifactPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader subt_msgs-msg:count-val is deprecated.  Use subt_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'pose_array-val :lambda-list '(m))
(cl:defmethod pose_array-val ((m <ArtifactPoseArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader subt_msgs-msg:pose_array-val is deprecated.  Use subt_msgs-msg:pose_array instead.")
  (pose_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArtifactPoseArray>) ostream)
  "Serializes a message object of type '<ArtifactPoseArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArtifactPoseArray>) istream)
  "Deserializes a message object of type '<ArtifactPoseArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'subt_msgs-msg:ArtifactPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArtifactPoseArray>)))
  "Returns string type for a message object of type '<ArtifactPoseArray>"
  "subt_msgs/ArtifactPoseArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArtifactPoseArray)))
  "Returns string type for a message object of type 'ArtifactPoseArray"
  "subt_msgs/ArtifactPoseArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArtifactPoseArray>)))
  "Returns md5sum for a message object of type '<ArtifactPoseArray>"
  "1241fdc583a1d4a260d1fbeb9ee080f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArtifactPoseArray)))
  "Returns md5sum for a message object of type 'ArtifactPoseArray"
  "1241fdc583a1d4a260d1fbeb9ee080f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArtifactPoseArray>)))
  "Returns full string definition for message of type '<ArtifactPoseArray>"
  (cl:format cl:nil "Header header~%string camera~%int32 count~%ArtifactPose[] pose_array~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: subt_msgs/ArtifactPose~%string Class~%#string status				# O for non_return , X for return ~%int32 appear_count~%float64 probability~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArtifactPoseArray)))
  "Returns full string definition for message of type 'ArtifactPoseArray"
  (cl:format cl:nil "Header header~%string camera~%int32 count~%ArtifactPose[] pose_array~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: subt_msgs/ArtifactPose~%string Class~%#string status				# O for non_return , X for return ~%int32 appear_count~%float64 probability~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArtifactPoseArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'camera))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArtifactPoseArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ArtifactPoseArray
    (cl:cons ':header (header msg))
    (cl:cons ':camera (camera msg))
    (cl:cons ':count (count msg))
    (cl:cons ':pose_array (pose_array msg))
))
