# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "catch_the_ball: 1 messages, 2 services")

set(MSG_I_FLAGS "-Icatch_the_ball:/user/x0221391/ros_ws/src/catch_the_ball/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(catch_the_ball_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/msg/Catch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catch_the_ball
)

### Generating Services
_generate_srv_cpp(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/srv/Throw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catch_the_ball
)
_generate_srv_cpp(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/srv/Game.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catch_the_ball
)

### Generating Module File
_generate_module_cpp(catch_the_ball
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catch_the_ball
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(catch_the_ball_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(catch_the_ball_generate_messages catch_the_ball_generate_messages_cpp)

# target for backward compatibility
add_custom_target(catch_the_ball_gencpp)
add_dependencies(catch_the_ball_gencpp catch_the_ball_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catch_the_ball_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/msg/Catch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catch_the_ball
)

### Generating Services
_generate_srv_lisp(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/srv/Throw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catch_the_ball
)
_generate_srv_lisp(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/srv/Game.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catch_the_ball
)

### Generating Module File
_generate_module_lisp(catch_the_ball
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catch_the_ball
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(catch_the_ball_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(catch_the_ball_generate_messages catch_the_ball_generate_messages_lisp)

# target for backward compatibility
add_custom_target(catch_the_ball_genlisp)
add_dependencies(catch_the_ball_genlisp catch_the_ball_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catch_the_ball_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/msg/Catch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catch_the_ball
)

### Generating Services
_generate_srv_py(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/srv/Throw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catch_the_ball
)
_generate_srv_py(catch_the_ball
  "/user/x0221391/ros_ws/src/catch_the_ball/srv/Game.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catch_the_ball
)

### Generating Module File
_generate_module_py(catch_the_ball
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catch_the_ball
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(catch_the_ball_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(catch_the_ball_generate_messages catch_the_ball_generate_messages_py)

# target for backward compatibility
add_custom_target(catch_the_ball_genpy)
add_dependencies(catch_the_ball_genpy catch_the_ball_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS catch_the_ball_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catch_the_ball)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/catch_the_ball
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(catch_the_ball_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catch_the_ball)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/catch_the_ball
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(catch_the_ball_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catch_the_ball)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catch_the_ball\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/catch_the_ball
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(catch_the_ball_generate_messages_py std_msgs_generate_messages_py)
