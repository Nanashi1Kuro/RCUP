; Auto-generated. Do not edit!


(cl:in-package inverse_problem_srv-srv)


;//! \htmlinclude publish_cmd-request.msg.html

(cl:defclass <publish_cmd-request> (roslisp-msg-protocol:ros-message)
  ((jointState
    :reader jointState
    :initarg :jointState
    :type cl:string
    :initform ""))
)

(cl:defclass publish_cmd-request (<publish_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <publish_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'publish_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inverse_problem_srv-srv:<publish_cmd-request> is deprecated: use inverse_problem_srv-srv:publish_cmd-request instead.")))

(cl:ensure-generic-function 'jointState-val :lambda-list '(m))
(cl:defmethod jointState-val ((m <publish_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inverse_problem_srv-srv:jointState-val is deprecated.  Use inverse_problem_srv-srv:jointState instead.")
  (jointState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <publish_cmd-request>) ostream)
  "Serializes a message object of type '<publish_cmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'jointState))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'jointState))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <publish_cmd-request>) istream)
  "Deserializes a message object of type '<publish_cmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'jointState) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'jointState) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<publish_cmd-request>)))
  "Returns string type for a service object of type '<publish_cmd-request>"
  "inverse_problem_srv/publish_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'publish_cmd-request)))
  "Returns string type for a service object of type 'publish_cmd-request"
  "inverse_problem_srv/publish_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<publish_cmd-request>)))
  "Returns md5sum for a message object of type '<publish_cmd-request>"
  "d6ac0cf017b131c2669cb2b0322255b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'publish_cmd-request)))
  "Returns md5sum for a message object of type 'publish_cmd-request"
  "d6ac0cf017b131c2669cb2b0322255b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<publish_cmd-request>)))
  "Returns full string definition for message of type '<publish_cmd-request>"
  (cl:format cl:nil "string jointState ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'publish_cmd-request)))
  "Returns full string definition for message of type 'publish_cmd-request"
  (cl:format cl:nil "string jointState ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <publish_cmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'jointState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <publish_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'publish_cmd-request
    (cl:cons ':jointState (jointState msg))
))
;//! \htmlinclude publish_cmd-response.msg.html

(cl:defclass <publish_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass publish_cmd-response (<publish_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <publish_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'publish_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inverse_problem_srv-srv:<publish_cmd-response> is deprecated: use inverse_problem_srv-srv:publish_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <publish_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inverse_problem_srv-srv:result-val is deprecated.  Use inverse_problem_srv-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <publish_cmd-response>) ostream)
  "Serializes a message object of type '<publish_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <publish_cmd-response>) istream)
  "Deserializes a message object of type '<publish_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<publish_cmd-response>)))
  "Returns string type for a service object of type '<publish_cmd-response>"
  "inverse_problem_srv/publish_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'publish_cmd-response)))
  "Returns string type for a service object of type 'publish_cmd-response"
  "inverse_problem_srv/publish_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<publish_cmd-response>)))
  "Returns md5sum for a message object of type '<publish_cmd-response>"
  "d6ac0cf017b131c2669cb2b0322255b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'publish_cmd-response)))
  "Returns md5sum for a message object of type 'publish_cmd-response"
  "d6ac0cf017b131c2669cb2b0322255b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<publish_cmd-response>)))
  "Returns full string definition for message of type '<publish_cmd-response>"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'publish_cmd-response)))
  "Returns full string definition for message of type 'publish_cmd-response"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <publish_cmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <publish_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'publish_cmd-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'publish_cmd)))
  'publish_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'publish_cmd)))
  'publish_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'publish_cmd)))
  "Returns string type for a service object of type '<publish_cmd>"
  "inverse_problem_srv/publish_cmd")