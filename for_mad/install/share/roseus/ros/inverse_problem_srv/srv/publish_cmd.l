;; Auto-generated. Do not edit!


(when (boundp 'inverse_problem_srv::publish_cmd)
  (if (not (find-package "INVERSE_PROBLEM_SRV"))
    (make-package "INVERSE_PROBLEM_SRV"))
  (shadow 'publish_cmd (find-package "INVERSE_PROBLEM_SRV")))
(unless (find-package "INVERSE_PROBLEM_SRV::PUBLISH_CMD")
  (make-package "INVERSE_PROBLEM_SRV::PUBLISH_CMD"))
(unless (find-package "INVERSE_PROBLEM_SRV::PUBLISH_CMDREQUEST")
  (make-package "INVERSE_PROBLEM_SRV::PUBLISH_CMDREQUEST"))
(unless (find-package "INVERSE_PROBLEM_SRV::PUBLISH_CMDRESPONSE")
  (make-package "INVERSE_PROBLEM_SRV::PUBLISH_CMDRESPONSE"))

(in-package "ROS")





(defclass inverse_problem_srv::publish_cmdRequest
  :super ros::object
  :slots (_jointState ))

(defmethod inverse_problem_srv::publish_cmdRequest
  (:init
   (&key
    ((:jointState __jointState) "")
    )
   (send-super :init)
   (setq _jointState (string __jointState))
   self)
  (:jointState
   (&optional __jointState)
   (if __jointState (setq _jointState __jointState)) _jointState)
  (:serialization-length
   ()
   (+
    ;; string _jointState
    4 (length _jointState)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _jointState
       (write-long (length _jointState) s) (princ _jointState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _jointState
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _jointState (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass inverse_problem_srv::publish_cmdResponse
  :super ros::object
  :slots (_result ))

(defmethod inverse_problem_srv::publish_cmdResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inverse_problem_srv::publish_cmd
  :super ros::object
  :slots ())

(setf (get inverse_problem_srv::publish_cmd :md5sum-) "d6ac0cf017b131c2669cb2b0322255b3")
(setf (get inverse_problem_srv::publish_cmd :datatype-) "inverse_problem_srv/publish_cmd")
(setf (get inverse_problem_srv::publish_cmd :request) inverse_problem_srv::publish_cmdRequest)
(setf (get inverse_problem_srv::publish_cmd :response) inverse_problem_srv::publish_cmdResponse)

(defmethod inverse_problem_srv::publish_cmdRequest
  (:response () (instance inverse_problem_srv::publish_cmdResponse :init)))

(setf (get inverse_problem_srv::publish_cmdRequest :md5sum-) "d6ac0cf017b131c2669cb2b0322255b3")
(setf (get inverse_problem_srv::publish_cmdRequest :datatype-) "inverse_problem_srv/publish_cmdRequest")
(setf (get inverse_problem_srv::publish_cmdRequest :definition-)
      "string jointState 

---

bool result

")

(setf (get inverse_problem_srv::publish_cmdResponse :md5sum-) "d6ac0cf017b131c2669cb2b0322255b3")
(setf (get inverse_problem_srv::publish_cmdResponse :datatype-) "inverse_problem_srv/publish_cmdResponse")
(setf (get inverse_problem_srv::publish_cmdResponse :definition-)
      "string jointState 

---

bool result

")



(provide :inverse_problem_srv/publish_cmd "d6ac0cf017b131c2669cb2b0322255b3")


