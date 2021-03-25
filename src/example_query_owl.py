#!/usr/bin/env python

import roslib; roslib.load_manifest('rosprolog')

import rospy
from rosprolog_client import PrologException, Prolog

if __name__ == '__main__':
    rospy.init_node('example_query_owl')
    prolog = Prolog()
    prolog.once("tripledb_forget(_,_,_).") # clean DB before starting
    # load example.owl in the knowrob database to access its content
    prolog.once("tripledb_load('package://rosprolog_examples/owl/example.owl',[namespace(example)]).")
    
    # query if there is an individual R of type Robot in the ontology
    query = prolog.query("instance_of(R, 'http://example#Robot')")
    for solution in query.solutions():
        robot = solution['R']
        print 'Found solution. Individual: %s' % (robot)
    query.finish()
    
    # query what the robot is carrying
    query = prolog.query("triple('"+ robot +"', 'http://example#carry', Y)")
    for solution in query.solutions():
        print 'Found solution. Robot %s is carrying Individual: %s' % (robot, solution['Y'])
    query.finish()