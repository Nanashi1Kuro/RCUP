;; Auto-generated. Do not edit!


(when (boundp 'inverse_problem_srv::point_cmd)
  (if (not (find-package "INVERSE_PROBLEM_SRV"))
    (make-package "INVERSE_PROBLEM_SRV"))
  (shadow 'point_cmd (find-package "INVERSE_PROBLEM_SRV")))
(unless (find-package "INVERSE_PROBLEM_SRV::POINT_CMD")
  (make-package "INVERSE_PROBLEM_SRV::POINT_CMD"))
(unless (find-package "INVERSE_PROBLEM_SRV::POINT_CMDREQUEST")
  (make-package "INVERSE_PROBLEM_SRV::POINT_CMDREQUEST"))
(unless (find-package "INVERSE_PROBLEM_SRV::POINT_CMDRESPONSE")
  (make-package "INVERSE_PROBLEM_SRV::POINT_CMDRESPONSE"))

(in-package "ROS")





(defclass inverse_problem_srv::point_cmdRequest
  :super ros::object
  :slots (_point ))

(defmethod inverse_problem_srv::point_cmdRequest
  (:init
   (&key
    ((:point __point) "")
    )
   (send-super :init)
   (setq _point (string __point))
   self)
  (:point
   (&optional __point)
   (if __point (setq _point __point)) _point)
  (:serialization-length
   ()
   (+
    ;; string _point
    4 (length _point)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _point
       (write-long (length _point) s) (princ _point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _point
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _point (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass inverse_problem_srv::point_cmdResponse
  :super ros::object
  :slots (_result ))

(defmethod inverse_problem_srv::point_cmdResponse
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

(defclass inverse_problem_srv::point_cmd
  :super ros::object
  :slots ())

(setf (get inverse_problem_srv::point_cmd :md5sum-) "fa0ec09bde95d41bf847bf7226201e41")
(setf (get inverse_problem_srv::point_cmd :datatype-) "inverse_problem_srv/point_cmd")
(setf (get inverse_problem_srv::point_cmd :request) inverse_problem_srv::point_cmdRequest)
(setf (get inverse_problem_srv::point_cmd :response) inverse_problem_srv::point_cmdResponse)

(defmethod inverse_problem_srv::point_cmdRequest
  (:response () (instance inverse_problem_srv::point_cmdResponse :init)))

(setf (get inverse_problem_srv::point_cmdRequest :md5sum-) "fa0ec09bde95d41bf847bf7226201e41")
(setf (get inverse_problem_srv::point_cmdRequest :datatype-) "inverse_problem_srv/point_cmdRequest")
(setf (get inverse_problem_srv::point_cmdRequest :definition-)
      "string point 

---

bool result

")

(setf (get inverse_problem_srv::point_cmdResponse :md5sum-) "fa0ec09bde95d41bf847bf7226201e41")
(setf (get inverse_problem_srv::point_cmdResponse :datatype-) "inverse_problem_srv/point_cmdResponse")
(setf (get inverse_problem_srv::point_cmdResponse :definition-)
      "string point 

---

bool result

")



(provide :inverse_problem_srv/point_cmd "fa0ec09bde95d41bf847bf7226201e41")


