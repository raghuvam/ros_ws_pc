
#include "catch_the_ball/player.h"
#include "catch_the_ball/Game.h"
#include "catch_the_ball/Throw.h"

#include <ros/ros.h>
#include <std_msgs/String.h>



player::player()
{
	PlayerID = 0;
	has_ball=false;
}

int player::getPlayerID()
{
	return PlayerID;
}

int player::getPlayerCatchCount()
{
   	return PlayerCatchCount;
}



bool player::throwTheBall(int fromPlayer,int playerID,ros::ServiceClient &thrw)
{
	catch_the_ball::Throw _msg;

	_msg.request.fromPlayer = fromPlayer;
	_msg.request.playerID = playerID;
	
	
	if(thrw.call(_msg))
	{
		return true;
	}

	ROS_INFO("Couldn't throw the ball");
	ros::Duration(1).sleep();//debug 
	return false;

}

int player::genRandomPlayer(ros::ServiceClient &gameserv,int now)
{

	catch_the_ball::Game msg;
	int playerCount;
	msg.request.option = 2;
	
	int nextID = now;
	if(gameserv.call(msg))
	{
		playerCount = msg.response.playerCount;
	}

	while(nextID == now)
	{
		nextID = 1 + (rand()% (playerCount)) ;

	}

		return nextID;
}