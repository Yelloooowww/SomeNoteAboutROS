;; Auto-generated. Do not edit!


(when (boundp 'pkg_cv::img_srv)
  (if (not (find-package "PKG_CV"))
    (make-package "PKG_CV"))
  (shadow 'img_srv (find-package "PKG_CV")))
(unless (find-package "PKG_CV::IMG_SRV")
  (make-package "PKG_CV::IMG_SRV"))
(unless (find-package "PKG_CV::IMG_SRVREQUEST")
  (make-package "PKG_CV::IMG_SRVREQUEST"))
(unless (find-package "PKG_CV::IMG_SRVRESPONSE")
  (make-package "PKG_CV::IMG_SRVRESPONSE"))

(in-package "ROS")





(defclass pkg_cv::img_srvRequest
  :super ros::object
  :slots (_color _point _on_off ))

(defmethod pkg_cv::img_srvRequest
  (:init
   (&key
    ((:color __color) "")
    ((:point __point) 0)
    ((:on_off __on_off) 0)
    )
   (send-super :init)
   (setq _color (string __color))
   (setq _point (round __point))
   (setq _on_off (round __on_off))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:point
   (&optional __point)
   (if __point (setq _point __point)) _point)
  (:on_off
   (&optional __on_off)
   (if __on_off (setq _on_off __on_off)) _on_off)
  (:serialization-length
   ()
   (+
    ;; string _color
    4 (length _color)
    ;; int64 _point
    8
    ;; int64 _on_off
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
     ;; int64 _on_off
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _on_off (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _on_off) (= (length (_on_off . bv)) 2)) ;; bignum
              (write-long (ash (elt (_on_off . bv) 0) 0) s)
              (write-long (ash (elt (_on_off . bv) 1) -1) s))
             ((and (class _on_off) (= (length (_on_off . bv)) 1)) ;; big1
              (write-long (elt (_on_off . bv) 0) s)
              (write-long (if (>= _on_off 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _on_off s)(write-long (if (>= _on_off 0) 0 #xffffffff) s)))
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
   ;; int64 _on_off
#+(or :alpha :irix6 :x86_64)
      (setf _on_off (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _on_off (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass pkg_cv::img_srvResponse
  :super ros::object
  :slots (_response ))

(defmethod pkg_cv::img_srvResponse
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

(defclass pkg_cv::img_srv
  :super ros::object
  :slots ())

(setf (get pkg_cv::img_srv :md5sum-) "01d253bb9c4556a79a141bb7d6d1c6cf")
(setf (get pkg_cv::img_srv :datatype-) "pkg_cv/img_srv")
(setf (get pkg_cv::img_srv :request) pkg_cv::img_srvRequest)
(setf (get pkg_cv::img_srv :response) pkg_cv::img_srvResponse)

(defmethod pkg_cv::img_srvRequest
  (:response () (instance pkg_cv::img_srvResponse :init)))

(setf (get pkg_cv::img_srvRequest :md5sum-) "01d253bb9c4556a79a141bb7d6d1c6cf")
(setf (get pkg_cv::img_srvRequest :datatype-) "pkg_cv/img_srvRequest")
(setf (get pkg_cv::img_srvRequest :definition-)
      "string color
int64 point
int64 on_off
---
int64 response

")

(setf (get pkg_cv::img_srvResponse :md5sum-) "01d253bb9c4556a79a141bb7d6d1c6cf")
(setf (get pkg_cv::img_srvResponse :datatype-) "pkg_cv/img_srvResponse")
(setf (get pkg_cv::img_srvResponse :definition-)
      "string color
int64 point
int64 on_off
---
int64 response

")



(provide :pkg_cv/img_srv "01d253bb9c4556a79a141bb7d6d1c6cf")


