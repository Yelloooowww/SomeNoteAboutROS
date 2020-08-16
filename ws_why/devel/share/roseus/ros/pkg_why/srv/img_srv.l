;; Auto-generated. Do not edit!


(when (boundp 'pkg_why::img_srv)
  (if (not (find-package "PKG_WHY"))
    (make-package "PKG_WHY"))
  (shadow 'img_srv (find-package "PKG_WHY")))
(unless (find-package "PKG_WHY::IMG_SRV")
  (make-package "PKG_WHY::IMG_SRV"))
(unless (find-package "PKG_WHY::IMG_SRVREQUEST")
  (make-package "PKG_WHY::IMG_SRVREQUEST"))
(unless (find-package "PKG_WHY::IMG_SRVRESPONSE")
  (make-package "PKG_WHY::IMG_SRVRESPONSE"))

(in-package "ROS")





(defclass pkg_why::img_srvRequest
  :super ros::object
  :slots (_color _point ))

(defmethod pkg_why::img_srvRequest
  (:init
   (&key
    ((:color __color) "")
    ((:point __point) 0)
    )
   (send-super :init)
   (setq _color (string __color))
   (setq _point (round __point))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:point
   (&optional __point)
   (if __point (setq _point __point)) _point)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ;; int64 _point
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;; int64 _point
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _point (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _point) (= (length (_point . bv)) 2)) ;; bignum
              (write-long (ash (elt (_point . bv) 0) 0) s)
              (write-long (ash (elt (_point . bv) 1) -1) s))
             ((and (class _point) (= (length (_point . bv)) 1)) ;; big1
              (write-long (elt (_point . bv) 0) s)
              (write-long (if (>= _point 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _point s)(write-long (if (>= _point 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _point
#+(or :alpha :irix6 :x86_64)
      (setf _point (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _point (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass pkg_why::img_srvResponse
  :super ros::object
  :slots (_response ))

(defmethod pkg_why::img_srvResponse
  (:init
   (&key
    ((:response __response) 0)
    )
   (send-super :init)
   (setq _response (round __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; int64 _response
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _response
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _response (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _response) (= (length (_response . bv)) 2)) ;; bignum
              (write-long (ash (elt (_response . bv) 0) 0) s)
              (write-long (ash (elt (_response . bv) 1) -1) s))
             ((and (class _response) (= (length (_response . bv)) 1)) ;; big1
              (write-long (elt (_response . bv) 0) s)
              (write-long (if (>= _response 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _response s)(write-long (if (>= _response 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _response
#+(or :alpha :irix6 :x86_64)
      (setf _response (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _response (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass pkg_why::img_srv
  :super ros::object
  :slots ())

(setf (get pkg_why::img_srv :md5sum-) "b8f81b07fa9e42ef3be27169c18c00a1")
(setf (get pkg_why::img_srv :datatype-) "pkg_why/img_srv")
(setf (get pkg_why::img_srv :request) pkg_why::img_srvRequest)
(setf (get pkg_why::img_srv :response) pkg_why::img_srvResponse)

(defmethod pkg_why::img_srvRequest
  (:response () (instance pkg_why::img_srvResponse :init)))

(setf (get pkg_why::img_srvRequest :md5sum-) "b8f81b07fa9e42ef3be27169c18c00a1")
(setf (get pkg_why::img_srvRequest :datatype-) "pkg_why/img_srvRequest")
(setf (get pkg_why::img_srvRequest :definition-)
      "string color
int64 point
---
int64 response

")

(setf (get pkg_why::img_srvResponse :md5sum-) "b8f81b07fa9e42ef3be27169c18c00a1")
(setf (get pkg_why::img_srvResponse :datatype-) "pkg_why/img_srvResponse")
(setf (get pkg_why::img_srvResponse :definition-)
      "string color
int64 point
---
int64 response

")



(provide :pkg_why/img_srv "b8f81b07fa9e42ef3be27169c18c00a1")


