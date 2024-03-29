#!/usr/bin/env python3

import roslib; roslib.load_manifest('rosprolog')

import rospy
from rosprolog_client import PrologException, Prolog

if __name__ == '__main__':
    rospy.init_node('example_query_prolog_kb')
    prolog = Prolog()
    query = prolog.query("perishable(X), location(X,Y,_)")
    for solution in query.solutions():
        print(("Found solution. Product: {}, Location: {}").format(solution['X'], solution['Y']))
    query.finish()