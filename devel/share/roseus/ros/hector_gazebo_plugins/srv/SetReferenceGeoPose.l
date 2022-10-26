;; Auto-generated. Do not edit!


(when (boundp 'hector_gazebo_plugins::SetReferenceGeoPose)
  (if (not (find-package "HECTOR_GAZEBO_PLUGINS"))
    (make-package "HECTOR_GAZEBO_PLUGINS"))
  (shadow 'SetReferenceGeoPose (find-package "HECTOR_GAZEBO_PLUGINS")))
(unless (find-package "HECTOR_GAZEBO_PLUGINS::SETREFERENCEGEOPOSE")
  (make-package "HECTOR_GAZEBO_PLUGINS::SETREFERENCEGEOPOSE"))
(unless (find-package "HECTOR_GAZEBO_PLUGINS::SETREFERENCEGEOPOSEREQUEST")
  (make-package "HECTOR_GAZEBO_PLUGINS::SETREFERENCEGEOPOSEREQUEST"))
(unless (find-package "HECTOR_GAZEBO_PLUGINS::SETREFERENCEGEOPOSERESPONSE")
  (make-package "HECTOR_GAZEBO_PLUGINS::SETREFERENCEGEOPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOGRAPHIC_MSGS"))
  (ros::roseus-add-msgs "geographic_msgs"))




(defclass hector_gazebo_plugins::SetReferenceGeoPoseRequest
  :super ros::object
  :slots (_geo_pose ))

(defmethod hector_gazebo_plugins::SetReferenceGeoPoseRequest
  (:init
   (&key
    ((:geo_pose __geo_pose) (instance geographic_msgs::GeoPose :init))
    )
   (send-super :init)
   (setq _geo_pose __geo_pose)
   self)
  (:geo_pose
   (&rest __geo_pose)
   (if (keywordp (car __geo_pose))
       (send* _geo_pose __geo_pose)
     (progn
       (if __geo_pose (setq _geo_pose (car __geo_pose)))
       _geo_pose)))
  (:serialization-length
   ()
   (+
    ;; geographic_msgs/GeoPose _geo_pose
    (send _geo_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geographic_msgs/GeoPose _geo_pose
       (send _geo_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geographic_msgs/GeoPose _geo_pose
     (send _geo_pose :deserialize buf ptr-) (incf ptr- (send _geo_pose :serialization-length))
   ;;
   self)
  )

(defclass hector_gazebo_plugins::SetReferenceGeoPoseResponse
  :super ros::object
  :slots ())

(defmethod hector_gazebo_plugins::SetReferenceGeoPoseResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hector_gazebo_plugins::SetReferenceGeoPose
  :super ros::object
  :slots ())

(setf (get hector_gazebo_plugins::SetReferenceGeoPose :md5sum-) "fe903ca95d0210defda73a1629604439")
(setf (get hector_gazebo_plugins::SetReferenceGeoPose :datatype-) "hector_gazebo_plugins/SetReferenceGeoPose")
(setf (get hector_gazebo_plugins::SetReferenceGeoPose :request) hector_gazebo_plugins::SetReferenceGeoPoseRequest)
(setf (get hector_gazebo_plugins::SetReferenceGeoPose :response) hector_gazebo_plugins::SetReferenceGeoPoseResponse)

(defmethod hector_gazebo_plugins::SetReferenceGeoPoseRequest
  (:response () (instance hector_gazebo_plugins::SetReferenceGeoPoseResponse :init)))

(setf (get hector_gazebo_plugins::SetReferenceGeoPoseRequest :md5sum-) "fe903ca95d0210defda73a1629604439")
(setf (get hector_gazebo_plugins::SetReferenceGeoPoseRequest :datatype-) "hector_gazebo_plugins/SetReferenceGeoPoseRequest")
(setf (get hector_gazebo_plugins::SetReferenceGeoPoseRequest :definition-)
      "geographic_msgs/GeoPose geo_pose

================================================================================
MSG: geographic_msgs/GeoPose
# Geographic pose, using the WGS 84 reference ellipsoid.
#
# Orientation uses the East-North-Up (ENU) frame of reference.
# (But, what about singularities at the poles?)

GeoPoint position
geometry_msgs/Quaternion orientation

================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")

(setf (get hector_gazebo_plugins::SetReferenceGeoPoseResponse :md5sum-) "fe903ca95d0210defda73a1629604439")
(setf (get hector_gazebo_plugins::SetReferenceGeoPoseResponse :datatype-) "hector_gazebo_plugins/SetReferenceGeoPoseResponse")
(setf (get hector_gazebo_plugins::SetReferenceGeoPoseResponse :definition-)
      "geographic_msgs/GeoPose geo_pose

================================================================================
MSG: geographic_msgs/GeoPose
# Geographic pose, using the WGS 84 reference ellipsoid.
#
# Orientation uses the East-North-Up (ENU) frame of reference.
# (But, what about singularities at the poles?)

GeoPoint position
geometry_msgs/Quaternion orientation

================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

")



(provide :hector_gazebo_plugins/SetReferenceGeoPose "fe903ca95d0210defda73a1629604439")


