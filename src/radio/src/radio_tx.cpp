#include <ros/ros.h>

#include "std_msgs/String.h"

#include <sstream>
int count=0;

int main(int argc,char **argv)
{
	ros::init(argc,argv,"radio_tx");
	ros::NodeHandle nh;
	
	ros::Publisher radio_tx = nh.advertise<std_msgs::String>("radio_tx",1000);
	ros::Rate loop_rate(10);
	while (ros::ok())
	{
		std_msgs::String msg;
		
		std::stringstream ss;
		
		
		ss << "radio tx - rx: " << count;
		
		msg.data = ss.str();
		
		ROS_INFO("%s",msg.data.c_str());
		
		radio_tx.publish(msg);
		
		
		ros::spinOnce();
		
		loop_rate.sleep();
		count++;
		
	
	}
	
	return 0;
}
