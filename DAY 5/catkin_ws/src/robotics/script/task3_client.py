#!/usr/bin/python

import sys
import rospy
from robotics.srv import num_of_words
from robotics.srv import num_of_wordsRequest
from robotics.srv import num_of_wordsResponse


def count_client(mystring):
	rospy.wait_for_service("count")
	try:
		count = rospy.ServiceProxy("count", num_of_words)
		res = count(mystring)
		return res.count

	except rospy.ServiceException as e:
		print ("service call failed: %s"%e)


def usage():
	return "%s [Iput a string]"%sys.argv[0]


if __name__ == "__main__":

	while not rospy.is_shutdown():
		mystring = raw_input ("enter your string")
		print ("Requesting num of words in %s"%(mystring))
		print ("The number of words is %d"%(count_client(mystring)))
