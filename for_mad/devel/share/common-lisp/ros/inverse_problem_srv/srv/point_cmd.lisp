; Auto-generated. Do not edit!


(cl:in-package inverse_problem_srv-srv)


;//! \htmlinclude point_cmd-request.msg.html

(cl:defclass <point_cmd-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type cl:string
    :initform ""))
)

(cl:defclass point_cmd-request (<point_cmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <point_cmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'point_cmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inverse_problem_srv-srv:<point_cmd-request> is deprecated: use inverse_problem_srv-srv:point_cmd-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <point_cmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inverse_problem_srv-srv:point-val is deprecated.  Use inverse_problem_srv-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <point_cmd-request>) ostream)
  "Serializes a message object of type '<point_cmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <point_cmd-request>) istream)
  "Deserializes a message object of type '<point_cmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<point_cmd-request>)))
  "Returns string type for a service object of type '<point_cmd-request>"
  "inverse_problem_srv/point_cmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'point_cmd-request)))
  "Returns string type for a service object of type 'point_cmd-request"
  "inverse_problem_srv/point_cmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<point_cmd-request>)))
  "Returns md5sum for a message object of type '<point_cmd-request>"
  "fa0ec09bde95d41bf847bf7226201e41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'point_cmd-request)))
  "Returns md5sum for a message object of type 'point_cmd-request"
  "fa0ec09bde95d41bf847bf7226201e41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<point_cmd-request>)))
  "Returns full string definition for message of type '<point_cmd-request>"
  (cl:format cl:nil "string point ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'point_cmd-request)))
  "Returns full string definition for message of type 'point_cmd-request"
  (cl:format cl:nil "string point ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <point_cmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <point_cmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'point_cmd-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude point_cmd-response.msg.html

(cl:defclass <point_cmd-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass point_cmd-response (<point_cmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <point_cmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'point_cmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inverse_problem_srv-srv:<point_cmd-response> is deprecated: use inverse_problem_srv-srv:point_cmd-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <point_cmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inverse_problem_srv-srv:result-val is deprecated.  Use inverse_problem_srv-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <point_cmd-response>) ostream)
  "Serializes a message object of type '<point_cmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <point_cmd-response>) istream)
  "Deserializes a message object of type '<point_cmd-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<point_cmd-response>)))
  "Returns string type for a service object of type '<point_cmd-response>"
  "inverse_problem_srv/point_cmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'point_cmd-response)))
  "Returns string type for a service object of type 'point_cmd-response"
  "inverse_problem_srv/point_cmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<point_cmd-response>)))
  "Returns md5sum for a message object of type '<point_cmd-response>"
  "fa0ec09bde95d41bf847bf7226201e41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'point_cmd-response)))
  "Returns md5sum for a message object of type 'point_cmd-response"
  "fa0ec09bde95d41bf847bf7226201e41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<point_cmd-response>)))
  "Returns full string definition for message of type '<point_cmd-response>"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'point_cmd-response)))
  "Returns full string definition for message of type 'point_cmd-response"
  (cl:format cl:nil "~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <point_cmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <point_cmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'point_cmd-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'point_cmd)))
  'point_cmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'point_cmd)))
  'point_cmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'point_cmd)))
  "Returns string type for a service object of type '<point_cmd>"
  "inverse_problem_srv/point_cmd")