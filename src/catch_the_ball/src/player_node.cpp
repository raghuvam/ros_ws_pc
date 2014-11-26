

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int8.h>
#include <sstream>
#include "catch_the_ball/player.h"
#include <iostream>
#include "catch_the_ball/Catch.h"
#include "catch_the_ball/Game.h"
#include "catch_the_ball/Throw.h"


std::string node_name;

int playerCount;
int playerCatchCount;
player pobj;
int caughtFrom;

char* names="AABCDEFGHIJKLMNOPQRSTUVWXYZ";
//
ros::Subscriber sub;
ros::ServiceClient gameserv;
ros::ServiceClient thrw ;


using namespace catch_the_ball;

void catchCallBack(const catch_the_ball::Catch turn)
{	
	


	if(turn.To == pobj.PlayerID)
	{	

		caughtFrom = turn.From;
		playerCatchCount++;
		pobj.PlayerCatchCount= playerCatchCount;
		pobj.has_ball = true;

	}
}

int main (int argc, char** argv)
{	
	std::cout << "NODE NAME: ";
	std::cin >> node_name ;

	catch_the_ball::Game play;

	ros::init(argc,argv,node_name);

	ros::NodeHandle playerNode;

	sub = playerNode.subscribe("game_server",1000, catchCallBack);

	gameserv = playerNode.serviceClient<catch_the_ball::Game>("game_request");

	thrw = playerNode.serviceClient<catch_the_ball::Throw>("throw_ball");

	play.request.option = 1;

	if(gameserv.call(play))
	{
		playerCount = play.response.playerCount;

		//setting up the ID for player
		pobj.PlayerID = playerCount;
		ROS_INFO("My ID is: %d", playerCount);
	}


	play.request.option = 2;

	if(gameserv.call(play))
	{
		if(play.response.playerCount == 1)
		{
			ROS_INFO("I have the ball");
			ros::Duration(1).sleep(); 
			pobj.has_ball = true;
		}

	}
	
	ros::Rate loop_rate(10);
	
	while(ros::ok())
	{
		if(gameserv.call(play))
		{
			if(play.response.playerCount > 1)
			{
				
				if(pobj.has_ball == true)
				{	
					int nextPlayer = pobj.genRandomPlayer(gameserv,pobj.PlayerID);
					ros::Duration(1).sleep();
					ROS_INFO("P %c: Caught the ball from Player %c",names[pobj.PlayerID], names[caughtFrom]);
					ros::Duration(1).sleep();//debug
					
					 

					pobj.has_ball = false;
					if(pobj.throwTheBall(pobj.PlayerID,nextPlayer,thrw))
					{
						ROS_INFO("P %c: Threw the ball to Player %c",names[pobj.PlayerID], names[nextPlayer]);
						ROS_INFO("waiting....");

					}			

				}


			}
		

		}

		ros::spinOnce();
   		loop_rate.sleep();

	}

}
