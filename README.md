# Challenge Final-bootcampdevops-ninja-v1

# Objetivos: 
  1.- Migración y despligue de la aplicación en un cluster de Minikube -Kubernetes
  2.- Administrar el ciclo de aplicaciones y soluciones dentro del cluster 
  3.- Automatizar el deployed dentro del repositorio
  
 # Revisión Inicial del Proyecto: Se escoge la revisión, análisis y para solución del proyecto Final-Bootcampdevops-Ninja-V1
 
   Paso 1: Verificación de la arquitectura inicial de los Cluster presentada por la empresa ZERO Technology  está formada por servicios backend y fronted 
   Paso 2: Se realizo un docker-compose para probar local la aplicación en conjunto y verificar cuales son los errores que presenta 
   Paso 3: Se identificaron los errores y faltas de código de la aplicación
   
 # Troubleshotting y Solución Final del Proyecto: De acuerdo a los requerimientos y los obsjetivos planteados por el cliente (ZERO Technology) a continuación se presenta  de forma consecutiva las soluciones y mejoras que se realizaron para el proyecto 
    
 # a) Contenerización de la aplicación 
      
     -Creación del Registry: 
     -Carpeta Dockerfile en Frontend
          Se verifica el package y el server.js
          Se verifica en el index que START sea igual a node.server.js
          Se define el puerto 3000
          Se verifica en el index que START sea igual a node.server.js
           
      -Carpeta Dockerfile en PRODUCTS
          Se define el puerto 3001
           
      -Carpeta Dockerfile en SHOPPING CART 
          Se define el puerto 3002
      
      -Se construyen las imagenes en Dockerfile
      -Se realiza el push de la imagenes a Docker-Hub      
           
    Creación del Docker-Compose 
        Se crea los 3 contenedores (1 FRONTEND y 2 BACKEND (Products y Shopping-Cart)
        Se define las variables de entorno para Products_Services y Shopping_Cart_Services
          Se asignan los puertos (3000/3001/3002)
          Se crea la red común para los 3 contenedores
          Se realiza prueba manual, probando la IP 

 # b) -Aprovisionamiento del proyecto en ambiente no PRODUCTIVO (Develop) en Minikube
     
      Se realizan los manifiesto de Kubernetes, de Services y Deploy de cada uno de los contenedores (FRONTEND - PRODUCTS -SHOPPING-CART)
      Se realizo el port-forward al address 0.0.0.0 con el puerto correspondiente para el FRONTEND 3000, para el PRODUCTS 3001 y para el SHOPPING-CART el 3002  
      Se controla la versión de la aplicación (Corroborando que no sea una versión LATER, para que no "PISE" las versiones)
      Se realiza un stage de aprobación manual antes del deploy en el entorno de PRODUCCIÖN
      Se hace deploy de la aplicación en Minikube (entorno local) 
          
 # c) -Aprovisionamiento del proyecto en ambiente PRODUCTIVO (PRODUCT) en AWS, en instancia EC2         
     
     Se desplegó en una instancia EC2 de AWS, a la cual se le configuró Grupo de Seguridad y Llave .PEM (TOKEN)
     Se decidio conectarse a la instacia de EC2 por medio de la Cloud Shell, sin embargo al cargale la llave de seguridad no establecia la conexión. Se verifico la conexión al puerto 22 en el Grupo de Seguridad, por lo cual se procedió a visualizar la IP de la Cloud Shell, haciedno un CURL a https://checkip.amazonaws.com, la cual se configuró en le Grupo de Seguridad obteniendo una conexión satisfactoria 
 
     
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
