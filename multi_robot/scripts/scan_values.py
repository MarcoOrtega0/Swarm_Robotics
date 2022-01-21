#!/usr/bin/env python
# Graficador  scaner de los robots
import rospy
import matplotlib.pyplot as plt
import numpy as np
import time
import matplotlib.animation as animation

from sensor_msgs.msg import LaserScan

global r1
global r2
global r3
r1,r2,r3 =np.linspace(0,2*np.pi,360),np.linspace(0,2*np.pi,360),np.linspace(0,2*np.pi,360)

def callback1(msg):

    r1 = msg.ranges
    # print("callback1")
    return
        

def callback2(msg):

    r2 = msg.ranges
    # print("callback2")
    return

def callback3(msg):

    r3 = msg.ranges
    # print("callback3")
    return

def animate(i):
    return l1     

if __name__ == '__main__':
    rospy.init_node('scan_values',anonymous=True)
    sub1 = rospy.Subscriber('/robot1/scan',LaserScan, callback1)
    sub2 = rospy.Subscriber('/robot2/scan',LaserScan, callback2)
    sub3 = rospy.Subscriber('/robot3/scan',LaserScan, callback3)
    rate = rospy.Rate(10000)
    print("go go")
    theta = np.linspace(0,2*np.pi,360)
    fig,(ax1, ax2, ax3) = plt.subplots(1, 3, subplot_kw=dict(projection='polar'))
    l1=ax1.plot(theta,r1)
    ax1.set_rmax(3)
    ax1.set_title("Robot1", va='bottom')
    ax2.plot(theta,r2)
    ax2.set_rmax(3)
    ax2.set_title("Robot2", va='bottom')
    ax3.plot(theta,r3)
    ax3.set_rmax(3)
    ax3.set_title("Robot3", va='bottom')

    ani = animation.FuncAnimation(
    fig, animate, interval=20, blit=True, save_count=50)


    plt.show()   

    


