cmake_minimum_required(VERSION 2.8.3)
project(catch_the_ball)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  roscpp
  sensor_msgs
  std_msgs
)



## Generate services in the 'srv' folder
add_service_files(FILES Game.srv Throw.srv)
add_message_files(FILES Catch.msg)


generate_messages(DEPENDENCIES std_msgs)

catkin_package()

## Specify additional locations of header files
## Your package locations should be listed before other locations

include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Declare a cpp library
 add_library(player
   src/player.cpp
 )

## Declare a cpp executable
add_executable(game_server src/game_server.cpp)

add_executable(player_node src/player_node.cpp)

## Add cmake target dependencies of the executable/library
## as an example, message headers may need to be generated before nodes
# add_dependencies(catch_the_ball_node catch_the_ball_generate_messages_cpp)

## Specify libraries to link a library or executable target against
target_link_libraries(game_server player ${catkin_LIBRARIES})
target_link_libraries(player_node player ${catkin_LIBRARIES})
