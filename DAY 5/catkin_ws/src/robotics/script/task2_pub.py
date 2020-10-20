#!/usr/bin/python


import rospy
from robotics.msg import comp_num
import random


pub = rospy.Publisher("comp_topic", comp_num, queue_size = 10)
rospy.init_node("comp_node")
rate = rospy.Rate(1)


while not rospy.is_shutdown():

	i = comp_num()
	i.real = int(10*random.random())
	i.imaginary = int(10*random.random())
	rospy.loginfo(i)
	rate.sleep()
