#!/usr/bin/python



import rospy
from std_msgs.msg import Int32


def talker():


	pub = rospy.Publisher("counter_1", Int32, queue_size = 10)
	rospy.init_node("node_1")
	rate = rospy.Rate(1)

	count = 0

	while not rospy.is_shutdown():

		rospy.loginfo(count)
		count = count + 1
		pub.publish(count)
		rate.sleep()

if __name__ == '__main__':

	try:
		talker()
	except rospy.ROSInterruptException:
		pass
