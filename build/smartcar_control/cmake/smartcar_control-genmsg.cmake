# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "smartcar_control: 3 messages, 4 services")

set(MSG_I_FLAGS "-Ismartcar_control:/home/sonic003/ros_clk/src/smartcar_control/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(smartcar_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg" NAME_WE)
add_custom_target(_smartcar_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smartcar_control" "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg" ""
)

get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg" NAME_WE)
add_custom_target(_smartcar_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smartcar_control" "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg" ""
)

get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg" NAME_WE)
add_custom_target(_smartcar_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smartcar_control" "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg" ""
)

get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv" NAME_WE)
add_custom_target(_smartcar_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smartcar_control" "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv" ""
)

get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv" NAME_WE)
add_custom_target(_smartcar_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smartcar_control" "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv" ""
)

get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv" NAME_WE)
add_custom_target(_smartcar_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smartcar_control" "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv" ""
)

get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv" NAME_WE)
add_custom_target(_smartcar_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smartcar_control" "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
)
_generate_msg_cpp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
)
_generate_msg_cpp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
)

### Generating Services
_generate_srv_cpp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
)
_generate_srv_cpp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
)
_generate_srv_cpp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
)
_generate_srv_cpp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
)

### Generating Module File
_generate_module_cpp(smartcar_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(smartcar_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(smartcar_control_generate_messages smartcar_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_cpp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_cpp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_cpp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_cpp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_cpp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_cpp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_cpp _smartcar_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smartcar_control_gencpp)
add_dependencies(smartcar_control_gencpp smartcar_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smartcar_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
)
_generate_msg_eus(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
)
_generate_msg_eus(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
)

### Generating Services
_generate_srv_eus(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
)
_generate_srv_eus(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
)
_generate_srv_eus(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
)
_generate_srv_eus(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
)

### Generating Module File
_generate_module_eus(smartcar_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(smartcar_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(smartcar_control_generate_messages smartcar_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_eus _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_eus _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_eus _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_eus _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_eus _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_eus _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_eus _smartcar_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smartcar_control_geneus)
add_dependencies(smartcar_control_geneus smartcar_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smartcar_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
)
_generate_msg_lisp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
)
_generate_msg_lisp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
)

### Generating Services
_generate_srv_lisp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
)
_generate_srv_lisp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
)
_generate_srv_lisp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
)
_generate_srv_lisp(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
)

### Generating Module File
_generate_module_lisp(smartcar_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(smartcar_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(smartcar_control_generate_messages smartcar_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_lisp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_lisp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_lisp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_lisp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_lisp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_lisp _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_lisp _smartcar_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smartcar_control_genlisp)
add_dependencies(smartcar_control_genlisp smartcar_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smartcar_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
)
_generate_msg_nodejs(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
)
_generate_msg_nodejs(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
)

### Generating Services
_generate_srv_nodejs(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
)
_generate_srv_nodejs(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
)
_generate_srv_nodejs(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
)
_generate_srv_nodejs(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
)

### Generating Module File
_generate_module_nodejs(smartcar_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(smartcar_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(smartcar_control_generate_messages smartcar_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_nodejs _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_nodejs _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_nodejs _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_nodejs _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_nodejs _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_nodejs _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_nodejs _smartcar_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smartcar_control_gennodejs)
add_dependencies(smartcar_control_gennodejs smartcar_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smartcar_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
)
_generate_msg_py(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
)
_generate_msg_py(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
)

### Generating Services
_generate_srv_py(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
)
_generate_srv_py(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
)
_generate_srv_py(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
)
_generate_srv_py(smartcar_control
  "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
)

### Generating Module File
_generate_module_py(smartcar_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(smartcar_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(smartcar_control_generate_messages smartcar_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/State.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_py _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/DriversInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_py _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/msg/VelInput.msg" NAME_WE)
add_dependencies(smartcar_control_generate_messages_py _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetFloat.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_py _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetInt.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_py _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetString.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_py _smartcar_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sonic003/ros_clk/src/smartcar_control/srv/SetPoint.srv" NAME_WE)
add_dependencies(smartcar_control_generate_messages_py _smartcar_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smartcar_control_genpy)
add_dependencies(smartcar_control_genpy smartcar_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smartcar_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smartcar_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(smartcar_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(smartcar_control_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smartcar_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(smartcar_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(smartcar_control_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smartcar_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(smartcar_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(smartcar_control_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smartcar_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(smartcar_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(smartcar_control_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control)
  install(CODE "execute_process(COMMAND \"/home/sonic003/miniconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smartcar_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(smartcar_control_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(smartcar_control_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
