# Challenge Final 

Objetivos: 
  1.- Migración y despligue de la aplicación en un cluster de Kubernetes
  2.- Administrar el ciclo de aplicaciones y soluciones dentro del cluster 
  3.- Automatizar el deployed dentro del repositorio
  
  Revisión Inicial del Proyecto: Se escoge la revisión, análisis y para solución del proyecto Final-Bootcampdevops-Ninja-V1
 
   Paso 1: Verificación de la arquitectura inicial de los Cluster presentada por la empresa ZERO Technology  está formada por servicios backend y fronted 
   Paso 2: Se realizo un docker-compose para probar local la aplicación en conjunto y verificar cuales son los errores que presenta 
   Paso 3: Se identificaron los errores y faltas de código de la aplicación
   
   Troubleshotting y Solución Final del Proyecto: De acuerdo a los requerimientos y los obsjetivos planteados por el cliente (ZERO Technology) a continuación se presenta  de forma consecutiva las soluciones y mejoras que se realizaron para el proyecto 
    
 a) Contenerización de la aplicación 
      
      - Creación del Registry: 
          Carpeta Dockerfile en Frontend
            Se verifica el package y el server.js
            Se verifica en el index que START sea igual a node.server.js
            Se define el puerto 3000
            Se verifica en el index que START sea igual a node.server.js
      
      Carpeta Dockerfile en PRODUCTS
            Se define el puerto 3001
            
      Carpeta Dockerfile en PRODUCTS
            Se define el puerto 3001      
      
      
      - Creación del Docker-Compose 
          Se crea los 3 contenedores (1 FRONTEND y 2 BACKEND (Products y Shopping-Cart)
          Se define las variables de entorno para Products_Services y Shopping_Cart_Services
          Se asignan los puertos (3000/3001/3002)
          Se crea la red común para los 3 contenedores
      
  b) -Aprovisonamiento del proyecto en ambiente no PRODUCTIVO (Devep) en Minikube
     
     - Configuración del PipeLine
          Se realiza el Build de la imagen de Dockerfile
          Se realiza el push de la imagen a Docker-Hub
          Se controla la versión de la aplicación (Corroborando que no sea una versión LATER, para que no "PISE" las versiones)
          Se realiza un stage de aprobación manual antes del deploy en el entorno de PRODUCCIÖN
          Se hace deploy de la aplicación en Minikube (entorno local) 
          
   c) -Aprovisonamiento del proyecto en ambiente PRODUCTIVO (PROD) en Minikube         
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          
