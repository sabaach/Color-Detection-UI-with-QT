;; Auto-generated. Do not edit!


(when (boundp 'opencamera::value)
  (if (not (find-package "OPENCAMERA"))
    (make-package "OPENCAMERA"))
  (shadow 'value (find-package "OPENCAMERA")))
(unless (find-package "OPENCAMERA::VALUE")
  (make-package "OPENCAMERA::VALUE"))

(in-package "ROS")
;;//! \htmlinclude value.msg.html


(defclass opencamera::value
  :super ros::object
  :slots (_hue_max _hue_min _saturation_max _saturation_min _value_max _value_min ))

(defmethod opencamera::value
  (:init
   (&key
    ((:hue_max __hue_max) 0)
    ((:hue_min __hue_min) 0)
    ((:saturation_max __saturation_max) 0)
    ((:saturation_min __saturation_min) 0)
    ((:value_max __value_max) 0)
    ((:value_min __value_min) 0)
    )
   (send-super :init)
   (setq _hue_max (round __hue_max))
   (setq _hue_min (round __hue_min))
   (setq _saturation_max (round __saturation_max))
   (setq _saturation_min (round __saturation_min))
   (setq _value_max (round __value_max))
   (setq _value_min (round __value_min))
   self)
  (:hue_max
   (&optional __hue_max)
   (if __hue_max (setq _hue_max __hue_max)) _hue_max)
  (:hue_min
   (&optional __hue_min)
   (if __hue_min (setq _hue_min __hue_min)) _hue_min)
  (:saturation_max
   (&optional __saturation_max)
   (if __saturation_max (setq _saturation_max __saturation_max)) _saturation_max)
  (:saturation_min
   (&optional __saturation_min)
   (if __saturation_min (setq _saturation_min __saturation_min)) _saturation_min)
  (:value_max
   (&optional __value_max)
   (if __value_max (setq _value_max __value_max)) _value_max)
  (:value_min
   (&optional __value_min)
   (if __value_min (setq _value_min __value_min)) _value_min)
  (:serialization-length
   ()
   (+
    ;; int32 _hue_max
    4
    ;; int32 _hue_min
    4
    ;; int32 _saturation_max
    4
    ;; int32 _saturation_min
    4
    ;; int32 _value_max
    4
    ;; int32 _value_min
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _hue_max
       (write-long _hue_max s)
     ;; int32 _hue_min
       (write-long _hue_min s)
     ;; int32 _saturation_max
       (write-long _saturation_max s)
     ;; int32 _saturation_min
       (write-long _saturation_min s)
     ;; int32 _value_max
       (write-long _value_max s)
     ;; int32 _value_min
       (write-long _value_min s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _hue_max
     (setq _hue_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hue_min
     (setq _hue_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _saturation_max
     (setq _saturation_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _saturation_min
     (setq _saturation_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value_max
     (setq _value_max (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value_min
     (setq _value_min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get opencamera::value :md5sum-) "c7de79ccfc65fcdf3851b36608861350")
(setf (get opencamera::value :datatype-) "opencamera/value")
(setf (get opencamera::value :definition-)
      "int32 hue_max
int32 hue_min
int32 saturation_max
int32 saturation_min
int32 value_max
int32 value_min                                                 
")



(provide :opencamera/value "c7de79ccfc65fcdf3851b36608861350")


