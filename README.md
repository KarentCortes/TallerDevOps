# Taller Sistemas Operativos
---

***TALLER 1***  

-----
1. Busque en la carpeta / los archivo *.sh y guarde el resultado en un archivo y en el mismo comando imprimir en consola el archivo de salida
 
Primero debemos entrar al usuario root, mediante el comando **sudo su** .  Una vez estando ahi, con el comando **find/-name"*.sh"** estamos buscando todos los archivos del sistema con la extensión .sh y con el comando **tee resultados.txt** guardamos el resultado del comando anterior dentro del archivo que se crea y se denomina  archivo.txt y asi mismo listamos lo que se almacena dentro del archivo.

![Taller1_Punto1](https://user-images.githubusercontent.com/126521214/222804716-4f83ff52-2454-4078-a9cf-43f26d179dd4.png)

2 Cree una lista de archivos separados por Enter llamándolo entrada.in, después con la lista leer entrada.in y crear los archivos con la lista creada en la carpeta        file_salida/, liste los archivos creados, guarde en un archivo salida.out e imprima el archivo  enumerando la lista de archivos creados.

 Se crea el archivo llamado entrada.in, el cual contiene una lista de archivos denominados: 
 -	Algo1.txt
 -	Algo2.txt
 -	Algo3.sh
 -	Algo4.sh
 -	Algo5.doc
 -	Algo 6.doc

![T1P2 1](https://user-images.githubusercontent.com/126521214/222805704-f0b3ace7-d3b9-4332-bc06-f87d7b50f7f6.png)  


 Se lee el contenido de entrada.in y se crea los archivos con la lista  creada en la carpeta file_salida/
 ![T1P2 2](https://user-images.githubusercontent.com/126521214/222805729-67e814f8-0bac-41c7-81fd-8b1ce4e1cba7.png)  

 ![T1P2 3](https://user-images.githubusercontent.com/126521214/222805774-9b2de4c0-b513-486a-b202-6d51d66aa08a.png)  

 Se lista y enumeran los archivos y se guardan en salida.out
 ![T1P2 4](https://user-images.githubusercontent.com/126521214/222805797-15a50f88-ba1d-4ebd-b6e3-714e24530eb7.png)

 ![T1P2 5](https://user-images.githubusercontent.com/126521214/222805810-e69f5fa9-9dae-46ff-b921-8828afef52b6.png)


3 Leer entrada.in, utilice un patrón para borrar solo uno de los archivos del folder file_salida y listar la carpeta file_salida, guardar el resultado en un archivo XX e imprima el contenido del archivo XX.

 Se lee el contenido de file_salida y se elimina los archivos que se encuentran ahí con la extensión .sh.
 Y el resultado de los archivos restantes se guardan en otro archivo denominado archivoXX

 ![T1P3](https://user-images.githubusercontent.com/126521214/222806923-e02cec69-9559-41f4-a6aa-3f44abbd9353.png)

4 Del listado anterior cambie el nombre de los archivos agregándole al final -mv.txt, liste los archivos e imprima el archivo en consola.

 Se toma el listado de archivos y se le cambia la extension de origen y se pasan todos a txt con el comando **mv -- "$LINEA" "${LINEA%.*}.txt** , luego guardamos el    resultado y lo listamos 
 ![T1P4 1](https://user-images.githubusercontent.com/126521214/222807263-5279b3e7-6d1e-47bd-abc2-a2fc03a0dbf2.jpg)
 ![T1P4 2](https://user-images.githubusercontent.com/126521214/222807278-b4598a70-8a54-416a-874a-634e370d0c86.png)

---
***TALLER 2***  
-----
Crear un script Shell con un menú que me permita: 

 Se crea el Menú con las distintas opciones y se le pide al usuario digitar la opción deseada, el valor que ingresa el usuario se guarda en la variable choice y         después se lee ésta para dar continuidad con el Menú.
![T2](https://user-images.githubusercontent.com/126521214/222840032-03c78fe3-56f5-4b58-93ea-d2e42706cb27.png)

1. Cambiar nombre Servidor.

Una vez el usuario escoja la opción 1, se muestra en pantalla el nombre actual del servidor y se le pide al usuario dijitar el nuevo nombre del servidor, Ese nombre se guarda en la variable NameHost  y con el comando **sudo hostnamectl set-hostname $NameHost** se ejecutan los cambios por debajo de manera automatizada y finalmente se muestra en pantalla en nuevo nombre de servidor.  

![T2P1 3](https://user-images.githubusercontent.com/126521214/222814811-753c441d-365c-42dd-999a-189b7658559b.png)  

![T2P1 1](https://user-images.githubusercontent.com/126521214/222814485-410a8a84-ba8d-476f-a551-afc35a764729.png)  

![T2P1 2](https://user-images.githubusercontent.com/126521214/222814769-f5418bd4-f91b-4ba7-89c1-cc0122126c15.png)  

2) Cambiar Partición Discos 

Cuando el usuario elije la opción 2, mediante el comando **sudo fdisk -l** se lista todos los disco para que el usuario elija el nombre del que desea particionar.
Despues de que el usuario dijite el nombre del disco, con el comando **sudo fdisk $NameDisk** se ingresa a la configuracion para particionar el disco y se debe dijitar las opciones pertinenetes.

![T2P2 7](https://user-images.githubusercontent.com/126521214/222822385-3adb3098-4381-41e7-8b6c-a8662b42eb47.png)
![T2P2 1](https://user-images.githubusercontent.com/126521214/222822505-6d3d206b-af36-430f-a0dd-9bb37f2460d3.png)
![T2P2 2](https://user-images.githubusercontent.com/126521214/222822517-36221793-0667-4765-bf6d-1765e48e91ce.png)
![T2P2 3](https://user-images.githubusercontent.com/126521214/222822530-45b85790-31e0-4282-9511-193678e37047.png)
![T2P2 4](https://user-images.githubusercontent.com/126521214/222822555-d4528a27-79f8-48d2-846e-f6557951321a.png)
![T2P2 5](https://user-images.githubusercontent.com/126521214/222822574-a7a2d077-b382-4d8c-975a-865647bcafde.png)
![T2P2 6](https://user-images.githubusercontent.com/126521214/222822583-25789b6e-4fbf-463f-9a74-c5e33ce99462.png)


3. Cambiar IP Servidor



4. Cambiar tabla de Host  

El archivo de hosts en este sistema se encuentra en la ruta /etc/hosts. Es un archivo de texto que podremos editar como superusuario con cualquier editor.
En este caso usaremos el comando **sudo nano /etc/hosts** para poder ingresar al editor y agregar los hosts que necesite añadir.

![T2P4 3](https://user-images.githubusercontent.com/126521214/222824356-825466c1-4930-490d-9cdc-ff1c72a45e24.png)

![T2P4 1](https://user-images.githubusercontent.com/126521214/222824373-0689c4a7-b054-46fc-8fae-42bd7983096f.png)

![T2P4 2](https://user-images.githubusercontent.com/126521214/222824386-3618b1ea-f9dc-4f9b-a6c7-9df93ccdc931.png)



5. Agregar Permisos de Firewall

Para agregar permisos de Firewall se le muestra un menú al usuario para que elija cual de todos los permisos desea habilitar, una vez el usuario digite la opción del menú y dependiendo de la elección se ejecutará uno de los siguintes comando, que tienen como objetivo habilitar dicha opción.
 
 *  sudo ufw enable : hablitar el servicio de Firewall
 *  sudo ufw status :conocer el estado del  servicio
 *  sudo ufw allow 22/tcp : habilitar puerto TCP
 *  sudo ufw allow 22/udp : Habilitar puerto UDP
 *  sudo ufw allow 30000:32767/tcp : habilitar rango puerto TCP
 *  sudo ufw allow 30000:32767/udp : Habilitar rango puerto UDP

![T2P5 5](https://user-images.githubusercontent.com/126521214/222824504-e3fa2e67-a3f9-4f87-86fb-13cc9be90eef.png)

![T2P5 1](https://user-images.githubusercontent.com/126521214/222824518-5b963567-da56-40b3-894c-45238e3d5c6c.png)

![T2P5 2](https://user-images.githubusercontent.com/126521214/222824526-6a61fc1e-daa9-4b96-a412-aedb8306e7ad.png)

![T2P5 3](https://user-images.githubusercontent.com/126521214/222824532-139440d2-bfd3-4de8-bba9-58da6f7c0437.png)

![T2P5 4](https://user-images.githubusercontent.com/126521214/222824547-91cea27c-1c39-42e5-a6e9-582ba39b8891.png)


6. Editar DNS Server

AL igual que en el punto anterior, se le da a conocer al usuario un menú para que elija la opción que desee y dependiendo de ésta, se ejecutará el comando pertienente.

* sudo service resolvconf start : hablitar el servicio de DNS
* sudo service resolvconf stop : detener el servicio de DNS
* sudo service resolvconf status : conocer el estado del servicio DNS
* sudo service resolvconf restart : reiniciar el servicio de DNS
*  sudo vi /etc/resolv.conf : editar el servicio de DNS

![T2P6 2](https://user-images.githubusercontent.com/126521214/222824785-a6b5419c-e804-4a3f-84d7-d70b82f79e26.png)

![T2P6 1](https://user-images.githubusercontent.com/126521214/222824799-b4d03d68-ddff-471b-b94a-3d2b8e3950e9.png)


