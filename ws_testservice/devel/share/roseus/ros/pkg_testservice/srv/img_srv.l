;; Auto-generated. Do not edit!


(when (boundp 'pkg_testservice::img_srv)
  (if (not (find-package "PKG_TESTSERVICE"))
    (make-package "PKG_TESTSERVICE"))
  (shadow 'img_srv (find-package "PKG_TESTSERVICE")))
(unless (find-package "PKG_TESTSERVICE::IMG_SRV")
  (make-package "PKG_TESTSERVICE::IMG_SRV"))
(unless (find-package "PKG_TESTSERVICE::IMG_SRVREQUEST")
  (make-package "PKG_TESTSERVICE::IMG_SRVREQUEST"))
(unless (find-package "PKG_TESTSERVICE::IMG_SRVRESPONSE")
  (make-package "PKG_TESTSERVICE::IMG_SRVRESPONSE"))

(in-package "ROS")





(defclass pkg_testservice::img_srvRequest
  :super ros::object
  :slots (_color _point ))

(defmethod pkg_testservice::img_srvRequest
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

(defclass pkg_testservice::img_srvResponse
  :super ros::object
  :slots (_responce ))

(defmethod pkg_testservice::img_srvResponse
  (:init
   (&key
    ((:responce __responce) 0)
    )
   (send-super :init)
   (setq _responce (round __responce))
   self)
  (:responce
   (&optional __responce)
   (if __responce (setq _responce __responce)) _responce)
  (:serialization-length
   ()
   (+
    ;; int64 _responce
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _responce
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _responce (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _responce) (= (length (_responce . bv)) 2)) ;; bignum
              (write-long (ash (elt (_responce . bv) 0) 0) s)
              (write-long (ash (elt (_responce . bv) 1) -1) s))
             ((and (class _responce) (= (length (_responce . bv)) 1)) ;; big1
              (write-long (elt (_responce . bv) 0) s)
              (write-long (if (>= _responce 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _responce s)(write-long (if (>= _responce 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _responce
#+(or :alpha :irix6 :x86_64)
      (setf _responce (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _responce (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass pkg_testservice::img_srv
  :super ros::object
  :slots ())

(setf (get pkg_testservice::img_srv :md5sum-) "344046330d50eb39af6c3963f87cb9cd")
(setf (get pkg_testservice::img_srv :datatype-) "pkg_testservice/img_srv")
(setf (get pkg_testservice::img_srv :request) pkg_testservice::img_srvRequest)
(setf (get pkg_testservice::img_srv :response) pkg_testservice::img_srvResponse)

(defmethod pkg_testservice::img_srvRequest
  (:response () (instance pkg_testservice::img_srvResponse :init)))

(setf (get pkg_testservice::img_srvRequest :md5sum-) "344046330d50eb39af6c3963f87cb9cd")
(setf (get pkg_testservice::img_srvRequest :datatype-) "pkg_testservice/img_srvRequest")
(setf (get pkg_testservice::img_srvRequest :definition-)
      "string color
int64 point
---
int64 responce

")

(setf (get pkg_testservice::img_srvResponse :md5sum-) "344046330d50eb39af6c3963f87cb9cd")
(setf (get pkg_testservice::img_srvResponse :datatype-) "pkg_testservice/img_srvResponse")
(setf (get pkg_testservice::img_srvResponse :definition-)
      "string color
int64 point
---
int64 responce

")



(provide :pkg_testservice/img_srv "344046330d50eb39af6c3963f87cb9cd")


