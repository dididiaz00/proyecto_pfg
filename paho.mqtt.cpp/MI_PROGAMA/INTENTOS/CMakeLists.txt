cmake_minimum_required(VERSION 3.0)
project(topic_publish)
project(mqttpp_chat)
project(client)

## --- Library dependencies ---

set(CMAKE_PREFIX_PATH "/usr/lib/cmake/PahoMqttCpp")

# Encuentra la biblioteca PahoMqttCpp
find_package(PahoMqttCpp REQUIRED)
add_executable(topic_publish topic_publish.cpp)
add_executable(mqttpp_chat mqttpp_chat.cpp)

# Enlaza con la biblioteca PahoMqttCpp utilizando el nombre de destino
target_link_libraries(topic_publish -lpaho-mqttpp3 -lpaho-mqtt3as)
target_link_libraries(mqttpp_chat -lpaho-mqttpp3 -lpaho-mqtt3as)
set(INSTALL_TARGETS
    topic_publish
    mqttpp_chat)

# Agrega las rutas de inclusión necesarias
target_include_directories(topic_publish PRIVATE ${PAHO_MQTT_C_INCLUDE_DIRS})
target_include_directories(mqttpp_chat PRIVATE ${PAHO_MQTT_C_INCLUDE_DIRS})
