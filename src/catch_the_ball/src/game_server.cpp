

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int8.h>
#include <sstream>
#include "catch_the_ball/player.h"
#include "catch_the_ball/Game.h"
#include "catch_the_ball/Throw.h"
#include "catch_the_ball/Catch.h"

int playerCount = 0;
int totalCatchCount=0;

char* names="AABCDEFGHIJKLMNOPQRSTUVWXYZ";

ros::ServiceServer serv;
ros::ServiceServer thrw;


ros::Publisher pub;

bool playersInfo(catch_the_ball::Game::Request &req, catch_the_ball::Game::Response &res)
{
	int i = req.option;
	switch(i)
	{
		case 1:
		playerCount++;
		ROS_INFO("New Player %c Joined", names[playerCount]);
		res.playerCount = playerCount;
		break;

		case 2:
		res.playerCount = playerCount;
		break;

	}

	return true;

}

bool throwBall(catch_the_ball::Throw::Request &req, catch_the_ball::Throw::Response &res)
{

	int id = req.playerID;
	totalCatchCount++;
	ROS_INFO("Total Catch Count: %d",totalCatchCount);

	//publish next player ID
	catch_the_ball::Catch turn;

	turn.From = req.fromPlayer;
	turn.To = req.playerID;
	pub.publish(turn);

	res.threw = true;
	
	ROS_INFO("ball is with player %c",names[turn.To]);
	//
	

	return true; 

}


int main(int argc, char** argv)
{
	ros::init (argc,argv,"game_server");

	ros::NodeHandle n;

	//Publisher service to publish
	pub = n.advertise<catch_the_ball::Catch>("game_server",1000);

	 serv = n.advertiseService("game_request",playersInfo);

	 thrw = n.advertiseService("throw_ball",throwBall);

	ROS_INFO("Started game server");

	ros::spin();

	return 0;

}