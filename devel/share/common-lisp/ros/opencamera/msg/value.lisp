; Auto-generated. Do not edit!


(cl:in-package opencamera-msg)


;//! \htmlinclude value.msg.html

(cl:defclass <value> (roslisp-msg-protocol:ros-message)
  ((hue_max
    :reader hue_max
    :initarg :hue_max
    :type cl:integer
    :initform 0)
   (hue_min
    :reader hue_min
    :initarg :hue_min
    :type cl:integer
    :initform 0)
   (saturation_max
    :reader saturation_max
    :initarg :saturation_max
    :type cl:integer
    :initform 0)
   (saturation_min
    :reader saturation_min
    :initarg :saturation_min
    :type cl:integer
    :initform 0)
   (value_max
    :reader value_max
    :initarg :value_max
    :type cl:integer
    :initform 0)
   (value_min
    :reader value_min
    :initarg :value_min
    :type cl:integer
    :initform 0))
)

(cl:defclass value (<value>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <value>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'value)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name opencamera-msg:<value> is deprecated: use opencamera-msg:value instead.")))

(cl:ensure-generic-function 'hue_max-val :lambda-list '(m))
(cl:defmethod hue_max-val ((m <value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencamera-msg:hue_max-val is deprecated.  Use opencamera-msg:hue_max instead.")
  (hue_max m))

(cl:ensure-generic-function 'hue_min-val :lambda-list '(m))
(cl:defmethod hue_min-val ((m <value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencamera-msg:hue_min-val is deprecated.  Use opencamera-msg:hue_min instead.")
  (hue_min m))

(cl:ensure-generic-function 'saturation_max-val :lambda-list '(m))
(cl:defmethod saturation_max-val ((m <value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencamera-msg:saturation_max-val is deprecated.  Use opencamera-msg:saturation_max instead.")
  (saturation_max m))

(cl:ensure-generic-function 'saturation_min-val :lambda-list '(m))
(cl:defmethod saturation_min-val ((m <value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencamera-msg:saturation_min-val is deprecated.  Use opencamera-msg:saturation_min instead.")
  (saturation_min m))

(cl:ensure-generic-function 'value_max-val :lambda-list '(m))
(cl:defmethod value_max-val ((m <value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencamera-msg:value_max-val is deprecated.  Use opencamera-msg:value_max instead.")
  (value_max m))

(cl:ensure-generic-function 'value_min-val :lambda-list '(m))
(cl:defmethod value_min-val ((m <value>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader opencamera-msg:value_min-val is deprecated.  Use opencamera-msg:value_min instead.")
  (value_min m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <value>) ostream)
  "Serializes a message object of type '<value>"
  (cl:let* ((signed (cl:slot-value msg 'hue_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hue_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'saturation_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'saturation_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value_max)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <value>) istream)
  "Deserializes a message object of type '<value>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hue_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hue_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saturation_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'saturation_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value_max) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value_min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<value>)))
  "Returns string type for a message object of type '<value>"
  "opencamera/value")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'value)))
  "Returns string type for a message object of type 'value"
  "opencamera/value")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<value>)))
  "Returns md5sum for a message object of type '<value>"
  "c7de79ccfc65fcdf3851b36608861350")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'value)))
  "Returns md5sum for a message object of type 'value"
  "c7de79ccfc65fcdf3851b36608861350")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<value>)))
  "Returns full string definition for message of type '<value>"
  (cl:format cl:nil "int32 hue_max~%int32 hue_min~%int32 saturation_max~%int32 saturation_min~%int32 value_max~%int32 value_min                                                 ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'value)))
  "Returns full string definition for message of type 'value"
  (cl:format cl:nil "int32 hue_max~%int32 hue_min~%int32 saturation_max~%int32 saturation_min~%int32 value_max~%int32 value_min                                                 ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <value>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <value>))
  "Converts a ROS message object to a list"
  (cl:list 'value
    (cl:cons ':hue_max (hue_max msg))
    (cl:cons ':hue_min (hue_min msg))
    (cl:cons ':saturation_max (saturation_max msg))
    (cl:cons ':saturation_min (saturation_min msg))
    (cl:cons ':value_max (value_max msg))
    (cl:cons ':value_min (value_min msg))
))
