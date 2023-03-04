#!/bin/bash
clear

# Eliminar Variables
unset folder

# set variables
user=$(whoami)
# set an infinite loop
while :
do
	clear
    # display menu
    
  
  echo "- ---------------------------------"
  echo "-  Server Name: [$(hostname)]      "
	echo "- -----------------------------------"
	echo "-  Aprovisionar el Servidor          "
	echo "- -----------------------------------"
	echo "-  1. Cambiar nombre Servidor        " 
	echo "- -----------------------------------"
  echo "-  2. Cambiar Particion Discos       "
	echo "- -----------------------------------"
  echo "-  3. Cambiar IP Servidor            "
	echo "- -----------------------------------"
  echo "-  4. Cambiar Tabla de Host          "
	echo "- -----------------------------------"
  echo "-  5. Agregar Permisos de Firewall   "
 	echo "- -----------------------------------"
  echo "-  6. Editar DNS Server              "
	echo "- -----------------------------------"
  echo "-  7. Configurar Proxy               "
 	echo "- -----------------------------------"
  echo "-  E. Exit                           "
  echo "- -----------------------------------"

	# get input from the user 
	read -p "Digite el numero de la opcion deseada [1-7] " choice
	
	# get input from the user 
	case $choice in

	  1)
    echo -e "\n"
  	    echo "-  1. Cambiar nombre Servidor        " 
        echo -e "\n"
        echo "   Nombre Server Actual                :[$(hostname)] "
        read -p ">> Digite el NUEVO nombre del Servidor : " NameHost
        echo -e "\n----------------------------------------------------------------------------------------"
        sudo hostnamectl set-hostname $NameHost
        echo "Verifique la variable [ preserve_hostname:  true ] en el archivo /etc/cloud/cloud.cfg   "
        
        echo "--------------------------------------------------------------------------------------"
        preser=$(grep preserve_hostname /etc/cloud/cloud.cfg)
        echo ">> Resultado /etc/cloud/cloud.cfg: [ >> $preser << ]"
        echo ">> Nombre Server Actual: [$(hostname)] "

        echo -e "\n----- Fin del Script -----------------------------------------------------------"
        read -p "Press [Enter] key to continue..." readEnterKey
        ;;

    2)
    echo -e "\n"
      echo "-  2. Cambiar Particion Discos       "
      echo -e "\n"
    	echo " Elija de los discos siguientes, el que desea particionar"
      echo "-----------------------------------------------------------"
      sudo  fdisk -l
      read -p ">> Digite el  nombre del Disco : " NameDisk
      echo -e "\n----------------------------------------------------------------------------------------"
      sudo fdisk  $NameDisk
      echo -e "\n----- Fin del Script -----------------------------------------------------------"
      read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        
     3)
     echo -e "\n"
      echo "-  3. Cambiar IP Servidor            "
      echo -e "\n"
    	echo " A continuacion encontrara las direcciones Ips y las interfaces: "
      echo "-----------------------------------------------------------"
      ifconfig
      echo -e "\n----------------------------------------------------------------"
      read -p ">> Digite la direccion Ip que desea: " NuevaIp
      sudo ifconfig  eth0 $NuevaIp  netmask 255.255.240.0
      echo -e "\n----- Fin del Script -----------------------------------------------------------"
      read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        
     4)
     echo -e "\n"
      echo "-  4. Cambiar Tabla de Host          "
      echo -e "\n"
    	echo " A continuacion realice el cambio en la tabla de host : "
      echo "-----------------------------------------------------------"
      sudo nano /etc/hosts
      read -p "Press [Enter] key to continue..." readEnterKey
        ;;
        
     5)
     echo -e "\n"
      echo "-  5. Agregar Permisos de Firewall   "
      echo -e "\n"
    	echo " Para hablitar el servicio de Firewall digite la opcion F1 : "
      echo " Para conocer el estado del  servicio digite la opcion F2 : "
      echo " Para habilitar puerto TCP digite la opcion F3 : "
      echo " Para Habilitar puerto UDP digite la opcion F4 : "
      echo " Para habilitar rango puerto TCP digite la opcion F5 : "
      echo " Para Habilitar rango puerto UDP digite la opcion F6 : "
      
      read -p "Digite la interfaz : " F
      
       if [ "$F" == "F1" ]; then
        sudo ufw enable
       read -p "Press [Enter] key to continue..." readEnterKey
       fi
       
       if [ "$F" == "F2" ]; then
         sudo ufw status
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
         
       if [ "$F" == "F3" ]; then
         sudo ufw allow 22/tcp
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
     
       if [ "$F" == "F4" ]; then
         sudo ufw allow 22/udp
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
         
       if [ "$F" == "F5" ]; then
         sudo ufw allow 30000:32767/tcp
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
       
       if [ "$F" == "F6" ]; then
         sudo ufw allow 30000:32767/udp
        read -p "Press [Enter] key to continue..." readEnterKey
       fi    
        ;; 
        
     6)
     echo -e "\n"  
      echo "-  6. Editar DNS Server              "
      echo -e "\n"
    	echo " Para hablitar el servicio de DNS digite la opcion D1 : "
      echo " Para detener el servicio de DNS digite la opcion D2 : "
      echo " Para conocer el estado del servicio DNS digite la opcion D3 : "
      echo " Para reiniciar el servicio de DNS digite la opcion D4 : "
      echo " Para editar el servicio de DNS digite la opcion D5 : "
      
      read -p "Digite la interfaz : " D
      
       if [ "$D" == "D1" ]; then
       sudo service resolvconf start
       read -p "Press [Enter] key to continue..." readEnterKey
       fi
       
       if [ "$D" == "D2" ]; then
         sudo service resolvconf stop
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
         
       if [ "$D" == "D3" ]; then
         sudo service resolvconf status
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
     
       if [ "$D" == "D4" ]; then
        sudo service resolvconf restart
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
         
       if [ "$D" == "D5" ]; then
        sudo vi /etc/resolv.conf
        read -p "Press [Enter] key to continue..." readEnterKey
       fi
        ;; 
        
        
  	E)
   
        echo "Gracias!"
        exit 0
        ;;
		
    *)
        echo "Error: Invalid option..."	
        read -p "Press [Enter] key to continue..." readEnterKey
        ;;
		esac
	done
