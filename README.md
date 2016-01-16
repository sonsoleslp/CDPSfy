CDPSfy
===================

Use
-------------
En el directorio principal del proyecto, abrir un terminal y ejecutar los siguientes comandos:

    $ (cd Backend/Nas && vagrant up)
    $ mkdir ~/gluster # Directorio donde se montara Gluster mediante NFS
    $ bash convoy.sh

Abrir máquina virtual Ubuntu en VirtualBox. En un terminal ejecutar lo siguiente:

    $ sudo convoy create musicdata
    $ sudo convoy create mongodata
    $ bash init.sh


 - Aplicación web CDPSfy: http://192.168.33.2:8002 
 - Estadísticas del
   balanceador de carga: http://192.168.33.2:7070
 - Nagios:
   http://192.168.33.2/nagios3 (user: nagiosadmin, pass: nagios)
