;; Auto-generated. Do not edit!


(when (boundp 'robotics::num_of_words)
  (if (not (find-package "ROBOTICS"))
    (make-package "ROBOTICS"))
  (shadow 'num_of_words (find-package "ROBOTICS")))
(unless (find-package "ROBOTICS::NUM_OF_WORDS")
  (make-package "ROBOTICS::NUM_OF_WORDS"))
(unless (find-package "ROBOTICS::NUM_OF_WORDSREQUEST")
  (make-package "ROBOTICS::NUM_OF_WORDSREQUEST"))
(unless (find-package "ROBOTICS::NUM_OF_WORDSRESPONSE")
  (make-package "ROBOTICS::NUM_OF_WORDSRESPONSE"))

(in-package "ROS")





(defclass robotics::num_of_wordsRequest
  :super ros::object
  :slots (_mystring ))

(defmethod robotics::num_of_wordsRequest
  (:init
   (&key
    ((:mystring __mystring) "")
    )
   (send-super :init)
   (setq _mystring (string __mystring))
   self)
  (:mystring
   (&optional __mystring)
   (if __mystring (setq _mystring __mystring)) _mystring)
  (:serialization-length
   ()
   (+
    ;; string _mystring
    4 (length _mystring)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mystring
       (write-long (length _mystring) s) (princ _mystring s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mystring
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mystring (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotics::num_of_wordsResponse
  :super ros::object
  :slots (_count ))

(defmethod robotics::num_of_wordsResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotics::num_of_words
  :super ros::object
  :slots ())

(setf (get robotics::num_of_words :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get robotics::num_of_words :datatype-) "robotics/num_of_words")
(setf (get robotics::num_of_words :request) robotics::num_of_wordsRequest)
(setf (get robotics::num_of_words :response) robotics::num_of_wordsResponse)

(defmethod robotics::num_of_wordsRequest
  (:response () (instance robotics::num_of_wordsResponse :init)))

(setf (get robotics::num_of_wordsRequest :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get robotics::num_of_wordsRequest :datatype-) "robotics/num_of_wordsRequest")
(setf (get robotics::num_of_wordsRequest :definition-)
      "string mystring

---

int32 count

")

(setf (get robotics::num_of_wordsResponse :md5sum-) "b4834320f090e9235da913886638fb4e")
(setf (get robotics::num_of_wordsResponse :datatype-) "robotics/num_of_wordsResponse")
(setf (get robotics::num_of_wordsResponse :definition-)
      "string mystring

---

int32 count

")



(provide :robotics/num_of_words "b4834320f090e9235da913886638fb4e")


