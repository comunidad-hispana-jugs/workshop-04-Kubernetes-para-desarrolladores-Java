# workshop-04-Kubernetes-para-desarrolladores-Java

Tema: Orquestación en Kubernetes para desarrolladores Java
Fecha: 29/09/2018 (Septiembre)
Hora:   17:00 PM (Hora de España) 
Grupo moderador: VigoJUG , CoruñaJUG

Grupos de usuarios de Java de España y Latinoamérica nos hemos unido para compartir conocimientos. Empezando en febrero del 2018 nos estaremos reuniendo cada dos meses para realizar talleres sobre temas de tecnología de gran interés en nuestras comunidades.

Desde España, e integrada con la primera conferencia Java en Galicia, el XantarJ, el grupo de usuarios de Vigo en colaboración con el CoruñaJUG y el grupo local XantarDev serán los encargados de orientar nuestra cuarta sesión en el mes de Septiembre de 2018:  Orquestación en Kubernetes para desarrolladores Java

Java 10 viene con muchas características necesarias para ejecutar aplicaciones JVM en Docker. El objetivo de este taller es desplegar una aplicación Java usando Docker & Kubernetes con los ajustes y límites de memoria y CPU adecuados.

En esta sesión, construiremos una imagen de Docker con una aplicación Java basada en el framework Netty. Esta aplicación tendrá un tamaño muy pequeño siguiendo las mejores prácticas de Docker y se aprovechará de Java Platform Module System (JPMS) presentado en la versión JDK 9. Desplegaremos la aplicación en Kubernetes y la escalaremos para demostrar cuán poderosa es hoy en día la JVM en conjunto con Docker y Kubernetes.

Luego expondremos las métricas de aplicaciones y JVM, que serán consumidas por Prometheus, un sistema que registra datos de series temporales (telemetría) para monitorear y alertar, y usaremos Grafana para consultar y generar métricas desde los pods de la aplicación.

Durante todo el workshop, descubriremos los errores más comunes al trabajar con Docker y la JVM y cómo evitarlos.

Únete a este evento y haz parte de las comunidades de habla hispana.
Si es posible trae tu laptop o equipo portátil para que practique con nosotros, tendremos 2 horas de sesiones técnicas y ejercicios prácticos.

Nivel: Principiantes
Tipo: Taller
Duración: 2 horas
 
Preparación del taller:
Instalación de Docker o Docker Toolbox.
https://www.docker.com/community-edition
Instalación de VirtualBox
https://www.virtualbox.org/

**Speakers, Organizadores y JUGs participantes**

Organizadores
Hacen parte de nuestra comunidad los grupos: Barcelona JUG, Cali JUG, Chile JUG, Coruña JUG, Ecuador JUG, Guate JUG, Madrid JUG, Málaga JUG, Medellín JUG, Nicaragua JUG, Panamá JUG, Perú JUG y Vigo JUG
Esta sesión estará moderada por VigoJUG apoyada por CoruñaJUG y XantarDev.
Speakers
José Corral (@jcleira (https://twitter.com/jcleira)): José ha participado en despliegues de Kubernetes en producción desde 2016 (Versión 1.2 de Kubernetes), su día a día consiste en ayudar a aterrizar y asentar despliegues de Kubernetes en equipos y empresas de distintos tamaños y ámbitos
Antón Rodríguez Yuste (@antonmry (https://twitter.com/antonmry)): Antón es Director Técnico de Optare Solutions, consultora con sede en España y México, y co-organizador de los JUGs de Vigo y A Coruña, además de unos de los organizadores de XantarJ, la mayor conferencia Java de Galicia. 
Ismael Hassan (@IsmaelHasan (https://twitter.com/IsmaelHasan)):  Tras algunos años con la Universidad de La Coruña haciendo desarrollos de Recuperación de Información, Ismael trabajó en Holanda y Abu Dhabi para, finalmente, incorporarse a Elastic donde trabaja como Ingeniero de Soporte desde Coruña, ciudad en la que además co-organiza el Java User Group.

* Canal de slack para comunicacion durante el HackDay

https://join.slack.com/t/comunidad-jugs/shared_invite/enQtNDAyNzEzNTUzNTEwLWIyN2I2N2U2NWNjMDkxMWI3Njk1NDJkZTU2NDU1MDBlYWNmNzRhNTRiMWJkZGYxNWU1ZTEzMTQ2NDUyZjVmYWQ

* Canal de youtube 

https://www.youtube.com/watch?v=xnaWcIa07gQ


## Contenido del taller
 Este mismo repositorio contine los recursos en diferentes carpetas que continenen las `Dockerfiles` Java 11 para realizar las Builds de docker de las aplicaciones de ejemplo, así como ficheros `yml` con la configuración del despliegue de aplicaciones en Kubernetes.

### Carpeta jdk-11-docker
Dockerfiles que utilizaremos para realizar las builds de la imagenes de Docker de las aplicaciones Java 11 que deployaremos en el cluster.

### Carpeta nginx
Ficheros de configuración de Kubernetes para el deployment básico de `nginx`, durante el workshop los utilizaremos para explicar el deployment básico de aplicaciones en Kubernetes y sobre cómo dar conectividad a una aplicación en Kubernetes.

### Carpeta wildfly
Ficheros de configuracicón de Kubernetes para el deployment de nuestra aplicación Java 11 de ejemplo. Así como el código fuente de la aplicación.

### Carpeta jersey-netty
Ficheros de configuracicón de Kubernetes para el deployment de nuestra aplicación Java 11 de ejemplo. Así como el código fuente de la aplicación.


## Workshop

El workshop comenzará con una charla de introducción sobre casos de uso de Kubernetes y una introducción a los conceptos de Kubernetes, para despues continuar con los siguientes pasos prácticos.

### Descarga de la máquina virtual

Podéis descargar el disco / volumen para la máquina virtual desde la siguiente URL:

https://drive.google.com/file/d/1fIR2Bo3ZHugnGrlN9gZahGa2xHmYMUFH/view?usp=sharing

### Arranque de la máquina virtual

1.- Crear una nueva máquina virtuan en VirtualBox

![Crear máquina virtual](https://i.imgur.com/WeQ0GPQ.png)

2.- Establecer 4096Mb de RAM (si es posible)

![Setear la configuración de memoria](https://i.imgur.com/Zn97vJO.png)

3.- Añadir como volumen la imagen del workshop. 

![Añadir el disco del workshop](https://i.imgur.com/ryNukeR.png)

4.- Añadir una interfaz de #Host Network# (para poder conectar por SSH)

> IMPORTANTE - Activar la opción de DHCP

![Host Network](https://i.imgur.com/YvAlAHH.png)
![Host Network - interfaz](https://i.imgur.com/0QH9QIa.png)

5.- Modificar la configuración de Red de Segundo adaptador para establecer nuestro Host Network

![Adaptador 1](https://i.imgur.com/oUjeiy0.png)
![Adaptador 2](https://i.imgur.com/D5zQRa8.png)

6.- Arrancar la máquina virtual, hacer login y ifconfig para obtener la IP del adaptador

Usuario: kubemotion
Password: kubemotion

![ifconfig](https://i.imgur.com/c2kwVIj.png)


7.- Hacer ssh desde tu ordenador

ssh kubemotion@<ip_obtenida_ifconfig>

#### Introducción a Docker 

```bash
# Iniciar nginx con docker 
docker run --name docker-nginx -p 8002:80 nginx     

# Iniciar nginx con docker daemonizado
docker run --name docker-nginx-daemon -p 8002:80 -d nginx     
curl localhost:8002

# Obtener logs de un contenedor en marcha
docker logs -f docker-nginx-daemon 

# Matar gracefully un contenedor
docker stop f3

# Obtener un listado de los contenedores que han sido apagados
docker ps -a | grep docker-nginx-daemon

# Listar las imagenes de docker
docker images

# Eliminar una imagen de docker
docker rmi <url> 
```

#### Introducción a Kubernetes 

```bash
# Listar los nodos de un cluster
kubectl get nodes

# Describir un nodo del cluster
kubectl describe node localhost.localdomain

# Listar los pods corriendo en un cluster
kubectl get po --all-namespaces
```

#### Deployment de ejemplo (nginx) en Kubernetes

```bash
# Abrir una nueva sesión de ssh con un watch para ver los pods running
watch kubectl get po

# Deployar nginx en el cluster
kubectl create -f nginx/deployment.yml

# Describir las características de un pod running
kubectl describe po <nombre_pod>

# Deployar un servicio de kubernetes para dar conectividad al pod
kubectl create -f nginx/service.yml

# Describir el servicio para el puerto en el nodo
kubectl describe svc nginx

# Verificar la conectividad de nginx
curl 127.0.0.1:<nodeport>

# Escalar un deployment
kubectl scale deployments/nginx --replicas=5

# Eliminar un deployment
kubectl delete deployment/nginx
kubectl delete -f nginx/deployment.yml

# Eliminar un servicio
kubectl delete service/nginx
kubectl delete -f nginx/service.yml
```

#### Deployment de una aplicación Java en Kubernetes

```bash
docker run -p 8080:8080 -p 9990:9990 -it jboss/wildfly /opt/jboss/wildfly/bin/standalone.sh 

# Deployar wildfly en el cluster
kubectl create -f wildfly/deployment.yml

# Describir las características de un pod running
kubectl describe po <nombre_pod>

# Deployar un servicio de kubernetes para dar conectividad al pod
kubectl create -f wildfly/service.yml

# Describir el servicio para el puerto en el nodo
kubectl describe svc wildfly

# Verificar la conectividad de wildfly
curl 127.0.0.1:<nodeport>

# Escalar un deployment
kubectl scale deployments/wildfly --replicas=5

# Eliminar un deployment
kubectl delete deployment/wildfly
kubectl delete -f wildfly/deployment.yml

# Eliminar un servicio
kubectl delete service/wildfly
kubectl delete -f wildfly/service.yml
```

## Orquestación de aplicaciones

Terminaremos el workshop con una charla sobre la diferencia de los pasos que hemos realizado y lo necesario para la orquestación de aplicaciones en producción.
