# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotics: 1 messages, 1 services")

set(MSG_I_FLAGS "-Irobotics:/home/mostafa/catkin_ws/src/robotics/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv" NAME_WE)
add_custom_target(_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics" "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv" ""
)

get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg" NAME_WE)
add_custom_target(_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotics" "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotics
  "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics
)

### Generating Services
_generate_srv_cpp(robotics
  "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics
)

### Generating Module File
_generate_module_cpp(robotics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotics_generate_messages robotics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv" NAME_WE)
add_dependencies(robotics_generate_messages_cpp _robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg" NAME_WE)
add_dependencies(robotics_generate_messages_cpp _robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_gencpp)
add_dependencies(robotics_gencpp robotics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robotics
  "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics
)

### Generating Services
_generate_srv_eus(robotics
  "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics
)

### Generating Module File
_generate_module_eus(robotics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robotics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robotics_generate_messages robotics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv" NAME_WE)
add_dependencies(robotics_generate_messages_eus _robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg" NAME_WE)
add_dependencies(robotics_generate_messages_eus _robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_geneus)
add_dependencies(robotics_geneus robotics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotics
  "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics
)

### Generating Services
_generate_srv_lisp(robotics
  "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics
)

### Generating Module File
_generate_module_lisp(robotics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotics_generate_messages robotics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv" NAME_WE)
add_dependencies(robotics_generate_messages_lisp _robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg" NAME_WE)
add_dependencies(robotics_generate_messages_lisp _robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_genlisp)
add_dependencies(robotics_genlisp robotics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robotics
  "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics
)

### Generating Services
_generate_srv_nodejs(robotics
  "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics
)

### Generating Module File
_generate_module_nodejs(robotics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robotics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robotics_generate_messages robotics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv" NAME_WE)
add_dependencies(robotics_generate_messages_nodejs _robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg" NAME_WE)
add_dependencies(robotics_generate_messages_nodejs _robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_gennodejs)
add_dependencies(robotics_gennodejs robotics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotics
  "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics
)

### Generating Services
_generate_srv_py(robotics
  "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics
)

### Generating Module File
_generate_module_py(robotics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotics_generate_messages robotics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/srv/num_of_words.srv" NAME_WE)
add_dependencies(robotics_generate_messages_py _robotics_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mostafa/catkin_ws/src/robotics/msg/comp_num.msg" NAME_WE)
add_dependencies(robotics_generate_messages_py _robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotics_genpy)
add_dependencies(robotics_genpy robotics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robotics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robotics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robotics_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robotics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robotics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robotics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robotics_generate_messages_py std_msgs_generate_messages_py)
endif()
