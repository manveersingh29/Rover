; Auto-generated. Do not edit!


(cl:in-package hector_gazebo_plugins-srv)


;//! \htmlinclude SetReferenceGeoPose-request.msg.html

(cl:defclass <SetReferenceGeoPose-request> (roslisp-msg-protocol:ros-message)
  ((geo_pose
    :reader geo_pose
    :initarg :geo_pose
    :type geographic_msgs-msg:GeoPose
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPose)))
)

(cl:defclass SetReferenceGeoPose-request (<SetReferenceGeoPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetReferenceGeoPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetReferenceGeoPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_gazebo_plugins-srv:<SetReferenceGeoPose-request> is deprecated: use hector_gazebo_plugins-srv:SetReferenceGeoPose-request instead.")))

(cl:ensure-generic-function 'geo_pose-val :lambda-list '(m))
(cl:defmethod geo_pose-val ((m <SetReferenceGeoPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_gazebo_plugins-srv:geo_pose-val is deprecated.  Use hector_gazebo_plugins-srv:geo_pose instead.")
  (geo_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetReferenceGeoPose-request>) ostream)
  "Serializes a message object of type '<SetReferenceGeoPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'geo_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetReferenceGeoPose-request>) istream)
  "Deserializes a message object of type '<SetReferenceGeoPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'geo_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetReferenceGeoPose-request>)))
  "Returns string type for a service object of type '<SetReferenceGeoPose-request>"
  "hector_gazebo_plugins/SetReferenceGeoPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetReferenceGeoPose-request)))
  "Returns string type for a service object of type 'SetReferenceGeoPose-request"
  "hector_gazebo_plugins/SetReferenceGeoPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetReferenceGeoPose-request>)))
  "Returns md5sum for a message object of type '<SetReferenceGeoPose-request>"
  "fe903ca95d0210defda73a1629604439")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetReferenceGeoPose-request)))
  "Returns md5sum for a message object of type 'SetReferenceGeoPose-request"
  "fe903ca95d0210defda73a1629604439")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetReferenceGeoPose-request>)))
  "Returns full string definition for message of type '<SetReferenceGeoPose-request>"
  (cl:format cl:nil "geographic_msgs/GeoPose geo_pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetReferenceGeoPose-request)))
  "Returns full string definition for message of type 'SetReferenceGeoPose-request"
  (cl:format cl:nil "geographic_msgs/GeoPose geo_pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetReferenceGeoPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'geo_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetReferenceGeoPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetReferenceGeoPose-request
    (cl:cons ':geo_pose (geo_pose msg))
))
;//! \htmlinclude SetReferenceGeoPose-response.msg.html

(cl:defclass <SetReferenceGeoPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetReferenceGeoPose-response (<SetReferenceGeoPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetReferenceGeoPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetReferenceGeoPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_gazebo_plugins-srv:<SetReferenceGeoPose-response> is deprecated: use hector_gazebo_plugins-srv:SetReferenceGeoPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetReferenceGeoPose-response>) ostream)
  "Serializes a message object of type '<SetReferenceGeoPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetReferenceGeoPose-response>) istream)
  "Deserializes a message object of type '<SetReferenceGeoPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetReferenceGeoPose-response>)))
  "Returns string type for a service object of type '<SetReferenceGeoPose-response>"
  "hector_gazebo_plugins/SetReferenceGeoPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetReferenceGeoPose-response)))
  "Returns string type for a service object of type 'SetReferenceGeoPose-response"
  "hector_gazebo_plugins/SetReferenceGeoPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetReferenceGeoPose-response>)))
  "Returns md5sum for a message object of type '<SetReferenceGeoPose-response>"
  "fe903ca95d0210defda73a1629604439")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetReferenceGeoPose-response)))
  "Returns md5sum for a message object of type 'SetReferenceGeoPose-response"
  "fe903ca95d0210defda73a1629604439")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetReferenceGeoPose-response>)))
  "Returns full string definition for message of type '<SetReferenceGeoPose-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetReferenceGeoPose-response)))
  "Returns full string definition for message of type 'SetReferenceGeoPose-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetReferenceGeoPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetReferenceGeoPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetReferenceGeoPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetReferenceGeoPose)))
  'SetReferenceGeoPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetReferenceGeoPose)))
  'SetReferenceGeoPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetReferenceGeoPose)))
  "Returns string type for a service object of type '<SetReferenceGeoPose>"
  "hector_gazebo_plugins/SetReferenceGeoPose")