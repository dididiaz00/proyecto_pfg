# Install script for directory: /home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mqtt" TYPE FILE FILES
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/async_client.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/buffer_ref.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/buffer_view.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/callback.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/client.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/connect_options.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/create_options.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/delivery_token.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/disconnect_options.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/exception.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/iaction_listener.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/iasync_client.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/iclient_persistence.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/message.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/properties.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/response_options.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/server_response.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/ssl_options.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/string_collection.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/subscribe_options.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/thread_queue.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/token.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/topic.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/types.h"
    "/home/dididiaz00/paho/git/paho.mqtt.cpp/src/mqtt/will_options.h"
    )
endif()

