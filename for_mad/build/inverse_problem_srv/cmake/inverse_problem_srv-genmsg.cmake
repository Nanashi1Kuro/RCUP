# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "inverse_problem_srv: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(inverse_problem_srv_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv" NAME_WE)
add_custom_target(_inverse_problem_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inverse_problem_srv" "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv" ""
)

get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv" NAME_WE)
add_custom_target(_inverse_problem_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "inverse_problem_srv" "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inverse_problem_srv
)
_generate_srv_cpp(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inverse_problem_srv
)

### Generating Module File
_generate_module_cpp(inverse_problem_srv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inverse_problem_srv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(inverse_problem_srv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(inverse_problem_srv_generate_messages inverse_problem_srv_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_cpp _inverse_problem_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_cpp _inverse_problem_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inverse_problem_srv_gencpp)
add_dependencies(inverse_problem_srv_gencpp inverse_problem_srv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inverse_problem_srv_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inverse_problem_srv
)
_generate_srv_eus(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inverse_problem_srv
)

### Generating Module File
_generate_module_eus(inverse_problem_srv
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inverse_problem_srv
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(inverse_problem_srv_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(inverse_problem_srv_generate_messages inverse_problem_srv_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_eus _inverse_problem_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_eus _inverse_problem_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inverse_problem_srv_geneus)
add_dependencies(inverse_problem_srv_geneus inverse_problem_srv_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inverse_problem_srv_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inverse_problem_srv
)
_generate_srv_lisp(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inverse_problem_srv
)

### Generating Module File
_generate_module_lisp(inverse_problem_srv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inverse_problem_srv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(inverse_problem_srv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(inverse_problem_srv_generate_messages inverse_problem_srv_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_lisp _inverse_problem_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_lisp _inverse_problem_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inverse_problem_srv_genlisp)
add_dependencies(inverse_problem_srv_genlisp inverse_problem_srv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inverse_problem_srv_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inverse_problem_srv
)
_generate_srv_nodejs(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inverse_problem_srv
)

### Generating Module File
_generate_module_nodejs(inverse_problem_srv
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inverse_problem_srv
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(inverse_problem_srv_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(inverse_problem_srv_generate_messages inverse_problem_srv_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_nodejs _inverse_problem_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_nodejs _inverse_problem_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inverse_problem_srv_gennodejs)
add_dependencies(inverse_problem_srv_gennodejs inverse_problem_srv_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inverse_problem_srv_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inverse_problem_srv
)
_generate_srv_py(inverse_problem_srv
  "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inverse_problem_srv
)

### Generating Module File
_generate_module_py(inverse_problem_srv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inverse_problem_srv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(inverse_problem_srv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(inverse_problem_srv_generate_messages inverse_problem_srv_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/point_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_py _inverse_problem_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dev0ros/Desktop/for_mad/src/inverse_problem_srv/srv/publish_cmd.srv" NAME_WE)
add_dependencies(inverse_problem_srv_generate_messages_py _inverse_problem_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(inverse_problem_srv_genpy)
add_dependencies(inverse_problem_srv_genpy inverse_problem_srv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS inverse_problem_srv_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inverse_problem_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/inverse_problem_srv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(inverse_problem_srv_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inverse_problem_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/inverse_problem_srv
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(inverse_problem_srv_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inverse_problem_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/inverse_problem_srv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(inverse_problem_srv_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inverse_problem_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/inverse_problem_srv
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(inverse_problem_srv_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inverse_problem_srv)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inverse_problem_srv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/inverse_problem_srv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(inverse_problem_srv_generate_messages_py std_msgs_generate_messages_py)
endif()
