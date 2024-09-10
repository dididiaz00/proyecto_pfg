###### INFORME DE MI PROGRAMA ######
###### CODIGO MQTT-CPP ######
**Instalación de las librerias en C y C++**
El proceso de construccion requiere de las siguientes herramientas:

  * CMake v3.5 o mejor
  * GCC v4.8 o mejor o Clang v3.9 o mejor
  * GNU Make

Antes de construir las librerias en C++, primero, tenemos que construir e instalar las librerias en Paho C:

$ git clone https://github.com/eclipse/paho.mqtt.c.git
$ cd paho.mqtt.c
$ git checkout v1.3.8

$ cmake -Bbuild -H. -DPAHO_ENABLE_TESTING=OFF -DPAHO_BUILD_STATIC=ON \
    -DPAHO_WITH_SSL=ON -DPAHO_HIGH_PERFORMANCE=ON
$ sudo cmake --build build/ --target install
$ sudo ldconfig

Una vez hechas las librerias en Paho C, empezamos con la construccion de las librerias en Paho C++:

$ git clone https://github.com/eclipse/paho.mqtt.cpp
$ cd paho.mqtt.cpp

$ cmake -Bbuild -H. -DPAHO_BUILD_STATIC=ON \
    -DPAHO_BUILD_DOCUMENTATION=TRUE -DPAHO_BUILD_SAMPLES=TRUE
$ sudo cmake --build build/ --target install
$ sudo ldconfig

Por ultimo tenemos que hacer la construccion del paqute en Debian/Ubuntu:

$ cmake -Bbuild -H. -DPAHO_WITH_SSL=ON -DPAHO_ENABLE_TESTING=OFF -DPAHO_BUILD_DEB_PACKAGE=ON
$ cmake --build build
$ (cd build && cpack)

esto generara un archivo `.deb`.

**Instalacion del .deb**
Para instalar el paquete Debian primero tenemos que estar en la carpeta donde se encuentra el dicho paquete, en mi caso, `paho/git/paho.mqtt.cpp/build` y el paquete se llama, `libpaho-mqtt.cpp-1.2.0-Linux.deb`.

Para instalar el paquete Debian:

$ sudo dpkg -i nombre-del-archivo.deb

Para verificar que el paquete este instalado correctamente:

$ dpkg -l | grep nombre-del-paquete

que en nuestro caso el nombre del paquete seria `libpaho-mqtt.cpp`.

DOCUMENTACION RELATIVA AL PAQUETE(https://eclipse.dev/paho/files/cppdoc/index.html)

**Codigo basico usando las librerias de libpaho-mqtt.cpp**
1.- Incluir los Encabezados de la Biblioteca:

$ #include <mqtt/client.h>

Asegúrate de que el compilador pueda encontrar estos encabezados especificando las rutas de inclusión necesarias, si es necesario.

2.- Creamos un cliente MQTT. La biblioteca Paho MQTT C++ proporciona la clase          mqtt::client, se puede usar para interactuar con el servidor MQTT:

$ mqtt::client client("tcp://broker.example.com:1883", "client_id");

Reemplaza "tcp://broker.example.com:1883" con la URL de tu servidor MQTT y "client_id" con el identificador de cliente que deseas utilizar.

3.- Conectar el Cliente MQTT. Después de crear el cliente, debes conectarlo al servidor MQTT utilizando el método connect:

$ mqtt::connect_options conn_opts;
$ conn_opts.set_keep_alive_interval(60);
$ conn_opts.set_clean_session(true);

$ client.connect(conn_opts);

Esto establece opciones de conexion y luego conecta el cliente al servidor MQTT.

4.- Publicar y suscribir. Cuando ya el cliente esta conectado usamos los metodos de `publish` para enviar mensajes MQTT y `suscribe` para suscribirte a temas MQTT y recibir mensajes.

$ client.publish("mi/tema", "Hola, mundo!");

$ client.subscribe("mi/tema");

Esto publica un mensaje en el tema `mi/tema` y se suscribe a ese mismo tema para recibir mensajes entrantes.

5.- Gestionar eventos. La biblioteca Paho MQTT C++ utiliza una estructura de bucle de eventos para gestionar las comunicaciones MQTT. Debes ejecutar este bucle para permitir que la biblioteca maneje eventos, como la recepcion de mensajes.

$ while (true) {
$     client.loop();
$ }

6.- Desconectar y liberar recursos. Cuando termine de utilizar el cliente MQTT, asegurate de desconectarlo del servidor y liberar los recursos adecuadamente.

$ client.disconnect();

**Creacion del CMakeLists.txt**
No tengo ni idea de como se hace asi que vamos a investigar sobre todo este tema para ver como se crea un buen `CMakeLists.txt`.

1.- Asegúrate de tener un archivo `CMakeLists.txt` en la raíz de tu proyecto. La raiz del proyecto se refiere al directorio raíz de tu proyecto de software. Este es el directorio que contiene todos los archivos y subdirectorios relacionados con tu proyecto.En el caso de `nsniqueestoyhaciendo.cpp` seria:

/paho/git/paho.mqtt.cpp/MI_PROGAMA/INTENTOS

En esta carpeta tendria que tener el programa `nsniqueestoyhaciendo.cpp` y tambien el `CMakeLists.txt` para saber que ahi es donde tiene que compilar el programa.

2.-Definir el proyecto y la versión de CMake.

$ cmake_minimum_required(VERSION 3.0)
$ project(TuProyecto)

3.- Buscar la biblioteca MQTT necesaria, en nuestro caso `libpaho-mqtt.cpp`. Utiliza find_package para buscar y configurar la biblioteca MQTT. 

$ find_package(libpaho-mqtt.cpp REQUIRED)

4.-Configurar la ejecución del programa.

$ add_executable(mi_programa main.cpp)
$ target_link_libraries(mi_programa PRIVATE mqtt_library)

Esto configura tu programa para que use la biblioteca MQTT. Asegúrate de que mi_programa sea el nombre de tu ejecutable y mqtt_library sea el nombre de la biblioteca MQTT.

5.- Especificar los directorios de inclusión.

$ target_include_directories(mi_programa PRIVATE ${mqtt_library_INCLUDE_DIRS})

Esto asegura que los archivos de encabezado de la biblioteca MQTT estén disponibles para tu programa.

**Compilacion del programa**
Yo la verdad que pensaba que este programa se compilaba como en matlab o en C++, dandole a un boton en el que ponga RUN o mitica flechita de compilacion o incluso dando a click derecho en el programa y clicando en RUN, porque al final no deja de ser C++. Pero no, es diferente se hace desde la terminal y usando una carpeta como en linux. Tiene sentido porque al final estoy usando una maquina virtual de Linux , Windows subsystem for Linux, y como en Linux primero le tienes que decir que herramientas quieres que use y que programe tiene que compilar.

1.- En la terminal creamos un directorio de compilacion. Y nos colocamos en el directorio.

 $ mkdir build
 $ cd build

2.- Ejecutamos el programa con CMake y make para compilar el programa

$ cmake ..
$ make

**Ejecucion del programa**
Para ejecutar un programa compilado utilizando CMake, sigue estos pasos:
1.- Navega al directorio donde esta el programa ejecutable. Por ejemplo, si tu programa se compiló en un directorio llamado build, navega hasta ese directorio para ejecutar el programa.

2.-Simplemente poner el nombre del programa en la terminal y pulsar Enter.

 $ ./mi_programa

El prefijo ./ se utiliza para indicar que quieres ejecutar un archivo desde el directorio actual. Asegúrate de escribir el nombre del archivo ejecutable sin la extensión (por ejemplo, mi_programa, no mi_programa.exe).

**Codigos de ejemplo**
topic_publish.cpp funciona perfectamente el mandar mensajes.
mqttpp_chat.cpp funciona perfectamente mandar y recibir mensajes.

###### FUNCIONES DE UTILIDAD ######
1.- TIMEOUT: es un timer de cuenta ascendente. Para usarlo necesitamos las siguientes bibliotecas de inclusion.

$ #include <iostream>
$ #include <chrono>
$ #include <thread>

Despues necesitamos declarar el tiempo que queremos que cuente

$ const auto TIMEOUT = std::chrono::seconds(10);
$ 
$ int main() {
$     // Simulación de una operación que debe completarse en un tiempo limitado
$     std::cout << "Realizando alguna operación..." << std::endl;
$ 
$     // Simular una espera con timeout
$     for (int i = 0; i < 15; ++i) {
$         if (i >= TIMEOUT.count()) {
$             std::cout << "Se ha alcanzado el timeout de " << TIMEOUT.count() << " segundos." << std::endl;
$             break;
$         }
$         std::this_thread::sleep_for(std::chrono::seconds(1));
$     }
$ 
$     return 0;
$ }

###### PROBLEMAS EN LA CARPETA INTENTOS ######
**CMakeLists.txt**
1.- Me da un error bastante raro 02/10:
`/usr/bin/ld: cannot find -lusr/lib/cmake/PahoMqttCpp: No such file or directory`

Usar la variable `PahoMqttCpp::PahoMqttCpp`:

 $ target_link_libraries(mi_ejecutable PahoMqttCpp::PahoMqttCpp)

Sigue sin funcionar asi que no me sirve de mucho esta ayuda. Ahora me da este error:
`Target "mi_ejecutable" links to target "PahoMqttCpp::PahoMqttCpp" but the target was not found.  Perhaps a find_package() call is missing for an IMPORTED target, or an ALIAS target is missing?`

2.- Error: `/usr/bin/ld: cannot find -lPahoMqttCpp: No such file or directory collect2: error: ld returned 1 exit status`
No reconoce que `PahoMqttCpp` sea donde tengo las bibliotecas, es el paquete pero no tiene el mismo nombre que donde estan las bibliotecas, el nombre donde estan las librerias tiene que tener un .so o un .a de sufijo en nuestro caso es `libpaho-mqttpp3`.

Si queremos saber donde esta instalado:

 $ locate libpaho-mqttpp3

En nuestro caso esta en `/usr/lib` y son cuatro archivos: `/usr/lib/libpaho-mqttpp3.a`, `/usr/lib/libpaho-mqttpp3.so`, `/usr/lib/libpaho-mqttpp3.so.1` y `/usr/lib/libpaho-mqttpp3.so.1.2.0`.

Ahora lo que nos falta es meterlo en el `LD_PATH`:

 $ export LD_LIBRARY_PATH=/ruta/personalizada/lib:$LD_LIBRARY_PATH

Tenemos que meter los 4 asi que hay que ir uno por uno, sustituyendo /ruta/personalizada/lib por la ubicaion real de nuestro archivo.

Actualizamos el cache de las bibliotecas:

 $ sudo ldconfig

Por ultimo si queremos saber si estan instalado dos comandos:

 $ echo $LD_LIBRARY_PATH
 $ ldconfig -p | grep libpaho-mqttpp3

El primero te dira que configuracion tienes en el `$LD_LIBRARY_PATH` y el segundo te buscara si tiene las biblitecas `libpaho-mqttpp3` en el cache de bibliotecas

3.- La solucion al problema lo he encontrado en la propia pagina de git eclipse/paho.mqtt.cpp `https://github.com/eclipse/paho.mqtt.cpp/issues/215` ponemos este comando:

 $ target_link_libraries(mi_ejecutable -lpaho-mqttpp3 -lpaho-mqtt3as)


**Consejos para con la terminal**
1.- Para borrar carpetas:

 $ rm -rf carpeta

Estos comandos sirven para borrar archivos: `rm` para borrar(remove), `-r` para borrar todo lo que hay dentro, `-f` para forzar el borrado ignorando confirmaciones y advertencias, ignorando al usuario.

2.- Para crear directorios

 $ mkdir directorio

Este comando sirve para crear: `mk` crea archivos(make), `dir` hace que el archivo sea un directorio.

###### CODIGO OPC-UA_SERVER-CPP ######
**INFORMACION OPC-UA**
Sacado de la pagina oficila de `UNIFIED AUTOMATION`: (https://documentation.unified-automation.com/uasdkcpp/1.6.0/html/L2TutorialServerHelloWorld.html)

**Instalación de las librerias en C y C++**

