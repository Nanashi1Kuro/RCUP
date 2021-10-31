import rospy, time, tf
from geometry_msgs.msg import *
from inverse_problem_srv.srv import *
from std_srvs.srv import *
from gazebo_msgs.msg import ModelState 
from gazebo_msgs.srv import SpawnModel, SetModelState

pub = rospy.Publisher('/base/cmd_vel', Twist, queue_size=10)
pub_tbs = rospy.Publisher('/rover/cmd_vel', Twist, queue_size=10)

vel_msg = Twist()

vel_msg.linear.x = -0.1
vel_msg.linear.y = 0
vel_msg.linear.z = 0
vel_msg.angular.x = 0
vel_msg.angular.y = 0
vel_msg.angular.z = 0

    
rospy.init_node('kfc')
r = rospy.Rate(10) 

def move_forward(t):
	vel_msg.linear.x = -0.1
        
	timeout = time.time() + t

	while time.time() < timeout:
	   pub_tbs.publish(vel_msg)
	   pub.publish(vel_msg)
	   r.sleep()
	   
	vel_msg.linear.x = 0.0
	pub.publish(vel_msg)
	pub_tbs.publish(vel_msg)
	
def home_manipulator():
	rospy.wait_for_service('/angle_robot/cmd_point')
	try:
		call = rospy.ServiceProxy('/angle_robot/cmd_point', point_cmd)
		resp1 = call("210 0 190 0")
		return resp1.result
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)

def spawn_turtlebot(id,dis):
	rospy.wait_for_service("/gazebo/spawn_urdf_model")

	try:
	    spawner = rospy.ServiceProxy("/gazebo/spawn_urdf_model", SpawnModel)
	    spawner(id, open("burger.urdf",'r').read(), "/rover", Pose(position= Point(dis,-0.45,0),orientation=Quaternion(0,0,0,0)),"world")

	except rospy.ServiceException as e:
	    print("Service call failed: ",e)
    	
def take_apple():
	rospy.wait_for_service('/angle_robot/cmd_point')
	try:
		call = rospy.ServiceProxy('/angle_robot/cmd_point', point_cmd)
		resp1 = call("0 -320 80 1.57")
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)
	time.sleep(7)
	
	rospy.wait_for_service('/angle_robot/gripper_cmd')
	try:
		call = rospy.ServiceProxy('/angle_robot/gripper_cmd', SetBool)
		resp1 = call(True)
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)
	time.sleep(3)
	
	try:
		call = rospy.ServiceProxy('/angle_robot/gripper_cmd', SetBool)
		resp1 = call(False)
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)
	time.sleep(3)
	
	try:
		call = rospy.ServiceProxy('/angle_robot/cmd_point', point_cmd)
		resp1 = call("0 300 110 1.57")
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)
	time.sleep(15)
	
	try:
		call = rospy.ServiceProxy('/angle_robot/gripper_cmd', SetBool)
		resp1 = call(True)
	except rospy.ServiceException as e:
		print("Service call failed: %s"%e)
	time.sleep(3)
	
def spawn_apple(name,x,y,z):
	try:
		spawn_model_client = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)
		spawn_model_client(
		model_name=name,
		model_xml=open('/home/ubuntu/catkin_ws/src/summit_description/src/apple.sdf', 'r').read(),
		robot_namespace='/apples',
		initial_pose=Pose(position= Point(x,y,z),orientation=Quaternion(0,0,0,0)),
		reference_frame='world'
)
	except rospy.ServiceException as e:
	    print("Service call failed: ",e)

spawn_turtlebot("waffle", -0.1) 
spawn_turtlebot("waffle2", 0.4) 
spawn_turtlebot("waffle3", 0.9) 

spawn_apple("1",-0.15,-0.5,1)
spawn_apple("2",-0.2,-0.5,1)
spawn_apple("3",-0.1,-0.5,1)
spawn_apple("4",-0.2,-0.5,1)

time.sleep(10)
move_forward(5)
time.sleep(5)
take_apple()
home_manipulator()
