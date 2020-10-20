#!/usr/bin/python


import rospy
from std_msgs.msg import Int32


def callback(counter):
	rospy.loginfo(counter.data)


def listener():


	rospy.init_node("node_2")
	rospy.Subscriber("counter_1", Int32, callback)
	rospy.spin()

if __name__ == '__main__':
	listener()
