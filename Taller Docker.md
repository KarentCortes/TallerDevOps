# Taller Docker
---
***TALLER 1***  
-----
1. Crear cuenta en GitHub 
 
   Lo primero que debemos hacer es ingresar a la página de **GitHub** y realizar el respectivo registro dado que aún no teníamos un usuario y una contraseña.  
  ![TallerDocker_1](https://user-images.githubusercontent.com/126521214/225089210-ede3a1b5-c32e-4a6f-aa67-e3d1ba4c33b6.png)  
  
2. Crear cuenta en Dockerhub  

    Al igual que en el punto anterior, debemos ingresar a la página de **DockerHub** y realizar el respectivo registro dado que aún no teniamos usuario y contraseña.

    ![TallerDocker_3](https://user-images.githubusercontent.com/126521214/225091828-d9a0f7a2-6a14-4dd5-934f-6c0912f9f72a.png)  
    
3. Crear repositorio 
 
   Una vez tengamos creada la cuenta en GitHub, procedemos a crear un repositorio y a realizar las configuraciones pertinentes. En este caso el repositorio se            denomina **TallerDevOps** y lo dejamos de dominio público.
  
  ![TallerDocker_2](https://user-images.githubusercontent.com/126521214/225089229-7a6100a0-2966-4811-bf7b-6de94531b902.png)
  
  Con la cuenta de DockerHub procedemos a crear también un repositorio, en este caso se denomina **actividad_devops_1**

  ![TallerDocker_4](https://user-images.githubusercontent.com/126521214/225091837-7f9e3113-5a18-47e2-8f74-60f6d10d2561.png)

4. Configuración de llaves SSH

    Para realizar la configuración de las llaves SSH dentro de GitHub, debemos dirigirnos al apartado de Settings de la cuenta en general y una vez estando allí           procedemos a buscar la opcion que dice **SSH and GPG Keys** como se muestra en la imagen.   
    Una vez ingresemos en esa opción, procedemos a dar clic en el apartado que dice **New SSh Key**.  
    Finalmente agregamos nuestra llave y le damos guardar.  

   ![TallerDocker_5](https://user-images.githubusercontent.com/126521214/225142128-dec27d50-928a-465e-86b9-73f116e6e85c.png)

***TALLER 2***  
-----
1. .Agregar modulo de instalación de Docker en menú de administración para instalación y pruebas unitarias  

Dentro del Menú agregamos la opción de instalación de docker y docker-compose. A continuación se podra observar como funciona el menú con esta opción.

  ![TallerDocker_6](https://user-images.githubusercontent.com/126521214/226063186-448f6054-bf66-4894-9f90-02df005f0bbe.png)
  ![TallerDocker_7](https://user-images.githubusercontent.com/126521214/226063207-971eca01-f094-48ce-aef1-245b16022231.png)
  
   En la siguiente imagen se muestra el código que lleva el Menu.sh para que la instalación sea automática
   
  ![TallerDocker_8](https://user-images.githubusercontent.com/126521214/226063222-573d03ef-1008-469b-abe8-9c6d6e75cc9d.png)

2. Subir cambios a repositorio y clonar repositorio.

   Una vez que guardamos los cambios del Menú.sh, por medio de la shell con la que automatizamos  la configuración de GitHub subimos los cambios y clonamos el            repositorio para todo quede tanto en GitHub como en la máquina virtual. 

  ![TallerDocker_9](https://user-images.githubusercontent.com/126521214/226064526-8e2acade-c5bc-4b98-8e4a-66ee4fff9727.png)
  
3. Instalar Shell en servidor de AWS

  En la siguiente imagen también podemos observar que ya quedo montada la shell con la que se automatizo la configuración de Git, esta configuración se hace en la rama   que uno especifica con anterioridad dentro de la misma shell. 

  ![TallerDocker_9](https://user-images.githubusercontent.com/126521214/226064526-8e2acade-c5bc-4b98-8e4a-66ee4fff9727.png)

4. Pruebas (docker –versión y Docker-compose --version)
  
   Como se pudo observar en el punto n° 1 de este taller realizamos la instalación de Docker y Docker-compose, entonces a continuación se podra ver la demostración de    las pruebas realizadas. 
   
  ![TallerDocker_10](https://user-images.githubusercontent.com/126521214/226064597-366eb714-63a0-4ce6-9250-b1ed45c37a24.png)
  ![TallerDocker_7](https://user-images.githubusercontent.com/126521214/226063207-971eca01-f094-48ce-aef1-245b16022231.png)

