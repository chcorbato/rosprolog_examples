#!/usr/bin/env python

import roslib; roslib.load_manifest('rosprolog')

import rospy
from rosprolog_client import PrologException, Prolog

if __name__ == '__main__':
    rospy.init_node('example_query_owl')
    prolog = Prolog()


  
    query = prolog.query("rdfs_individual_of(R, _)")
    for solution in query.solutions():
        print 'Found solution. Robot: %s' % (solution['R'])
    query.finish()