# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jpeg_viewer: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ijpeg_viewer:/user/x0221391/ros_ws/src/jpeg_viewer/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jpeg_viewer_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jpeg_viewer
  "/user/x0221391/ros_ws/src/jpeg_viewer/msg/jpeg_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jpeg_viewer
)

### Generating Services

### Generating Module File
_generate_module_cpp(jpeg_viewer
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jpeg_viewer
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jpeg_viewer_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jpeg_viewer_generate_messages jpeg_viewer_generate_messages_cpp)

# target for backward compatibility
add_custom_target(jpeg_viewer_gencpp)
add_dependencies(jpeg_viewer_gencpp jpeg_viewer_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jpeg_viewer_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jpeg_viewer
  "/user/x0221391/ros_ws/src/jpeg_viewer/msg/jpeg_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jpeg_viewer
)

### Generating Services

### Generating Module File
_generate_module_lisp(jpeg_viewer
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jpeg_viewer
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jpeg_viewer_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jpeg_viewer_generate_messages jpeg_viewer_generate_messages_lisp)

# target for backward compatibility
add_custom_target(jpeg_viewer_genlisp)
add_dependencies(jpeg_viewer_genlisp jpeg_viewer_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jpeg_viewer_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jpeg_viewer
  "/user/x0221391/ros_ws/src/jpeg_viewer/msg/jpeg_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jpeg_viewer
)

### Generating Services

### Generating Module File
_generate_module_py(jpeg_viewer
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jpeg_viewer
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jpeg_viewer_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jpeg_viewer_generate_messages jpeg_viewer_generate_messages_py)

# target for backward compatibility
add_custom_target(jpeg_viewer_genpy)
add_dependencies(jpeg_viewer_genpy jpeg_viewer_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jpeg_viewer_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jpeg_viewer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jpeg_viewer
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(jpeg_viewer_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jpeg_viewer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jpeg_viewer
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(jpeg_viewer_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jpeg_viewer)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jpeg_viewer\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jpeg_viewer
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(jpeg_viewer_generate_messages_py std_msgs_generate_messages_py)
