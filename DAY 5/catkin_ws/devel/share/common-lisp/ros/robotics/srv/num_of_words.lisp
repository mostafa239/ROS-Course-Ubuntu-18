; Auto-generated. Do not edit!


(cl:in-package robotics-srv)


;//! \htmlinclude num_of_words-request.msg.html

(cl:defclass <num_of_words-request> (roslisp-msg-protocol:ros-message)
  ((mystring
    :reader mystring
    :initarg :mystring
    :type cl:string
    :initform ""))
)

(cl:defclass num_of_words-request (<num_of_words-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <num_of_words-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'num_of_words-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics-srv:<num_of_words-request> is deprecated: use robotics-srv:num_of_words-request instead.")))

(cl:ensure-generic-function 'mystring-val :lambda-list '(m))
(cl:defmethod mystring-val ((m <num_of_words-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics-srv:mystring-val is deprecated.  Use robotics-srv:mystring instead.")
  (mystring m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <num_of_words-request>) ostream)
  "Serializes a message object of type '<num_of_words-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mystring))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mystring))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <num_of_words-request>) istream)
  "Deserializes a message object of type '<num_of_words-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mystring) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mystring) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<num_of_words-request>)))
  "Returns string type for a service object of type '<num_of_words-request>"
  "robotics/num_of_wordsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_of_words-request)))
  "Returns string type for a service object of type 'num_of_words-request"
  "robotics/num_of_wordsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<num_of_words-request>)))
  "Returns md5sum for a message object of type '<num_of_words-request>"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'num_of_words-request)))
  "Returns md5sum for a message object of type 'num_of_words-request"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<num_of_words-request>)))
  "Returns full string definition for message of type '<num_of_words-request>"
  (cl:format cl:nil "string mystring~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'num_of_words-request)))
  "Returns full string definition for message of type 'num_of_words-request"
  (cl:format cl:nil "string mystring~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <num_of_words-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mystring))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <num_of_words-request>))
  "Converts a ROS message object to a list"
  (cl:list 'num_of_words-request
    (cl:cons ':mystring (mystring msg))
))
;//! \htmlinclude num_of_words-response.msg.html

(cl:defclass <num_of_words-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass num_of_words-response (<num_of_words-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <num_of_words-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'num_of_words-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotics-srv:<num_of_words-response> is deprecated: use robotics-srv:num_of_words-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <num_of_words-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotics-srv:count-val is deprecated.  Use robotics-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <num_of_words-response>) ostream)
  "Serializes a message object of type '<num_of_words-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <num_of_words-response>) istream)
  "Deserializes a message object of type '<num_of_words-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<num_of_words-response>)))
  "Returns string type for a service object of type '<num_of_words-response>"
  "robotics/num_of_wordsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_of_words-response)))
  "Returns string type for a service object of type 'num_of_words-response"
  "robotics/num_of_wordsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<num_of_words-response>)))
  "Returns md5sum for a message object of type '<num_of_words-response>"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'num_of_words-response)))
  "Returns md5sum for a message object of type 'num_of_words-response"
  "b4834320f090e9235da913886638fb4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<num_of_words-response>)))
  "Returns full string definition for message of type '<num_of_words-response>"
  (cl:format cl:nil "~%int32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'num_of_words-response)))
  "Returns full string definition for message of type 'num_of_words-response"
  (cl:format cl:nil "~%int32 count~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <num_of_words-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <num_of_words-response>))
  "Converts a ROS message object to a list"
  (cl:list 'num_of_words-response
    (cl:cons ':count (count msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'num_of_words)))
  'num_of_words-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'num_of_words)))
  'num_of_words-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'num_of_words)))
  "Returns string type for a service object of type '<num_of_words>"
  "robotics/num_of_words")