

#ifndef  _PLAYER_H
#define  _PLAYER_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>

#include "catch_the_ball/player.h"



	class player
	{
		
	public:
		int PlayerID;
		int PlayerCatchCount;
		player();
		bool has_ball;
		int getPlayerID();
		int getPlayerCatchCount();
	    bool throwTheBall(int fromPlayer,int playerID,ros::ServiceClient &thrw);
		int genRandomPlayer(ros::ServiceClient &gameserv,int now);
	};


#endif