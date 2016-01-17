CDPSfy
===================


Usage
-------------


En el ordenador host, situado en el directorio principal del proyecto, ejecutar el siguiente comando para iniciar los servidores NAS:

	$ (cd Backend/Nas && vagrant up)

En la máquina virtualizada y en el directorio principal del proyecto, abrir dos terminales y ejecutar los siguientes comandos en la primera:

	$ mkdir ~/gluster # Directorio donde se montara Gluster mediante NFS
	$ bash convoy.sh

Y en la segunda terminal ejecutar lo siguiente:
	$ sudo convoy create musicdata
	$ sudo convoy create mongodata
	$ bash init.sh

 - Aplicación web CDPSfy: http://192.168.33.2:8002 
 - Estadísticas del balanceador de carga de los servidores Web: http://192.168.33.2:7070
 - Estadísticas del balanceador de carga de los servidores API: http://192.168.33.2:7071
 - Nagios:
   http://192.168.33.2/nagios3 (user: nagiosadmin, pass: nagios)
