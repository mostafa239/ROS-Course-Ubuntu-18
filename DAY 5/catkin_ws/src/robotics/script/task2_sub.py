#!/usr/bin/python


import rospy
from robotics.msg import comp_num


def callback(comp):
	rospy.loginfo("i recived: %d + %d i", comp.real, comp.imaginary)


rospy.Subscriber("comp_topic", comp_num, callback)
rospy.init_node("comp_node2")
rospy.spin()
