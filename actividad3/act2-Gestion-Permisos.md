Parte 1: Gestión de Usuarios

1. Creación de Usuarios: Crea tres usuarios llamados `usuario1`, `usuario2` y `usuario3`.

2. Asignación de Contraseñas: Establece una nueva contraseñas para cada usuario creado.

3. Información de Usuarios: Muestra la información de `usuario1` usando el comando `id`.

4. Eliminación de Usuarios: Elimina `usuario3`, pero conserva su directorio principal.
Parte 2: Gestión de Grupos

1. Creación de Grupos: Crea dos grupos llamados `grupo1` y `grupo2`.

2. Agregar Usuarios a Grupos: Agrega `usuario1` a `grupo1` y `usuario2` a `grupo2`.

3. Verificar Membresía: Verifica que los usuarios han sido agregados a los grupos utilizando el comando `groups`.

4. Eliminar Grupo: Elimina `grupo2`.
Parte 3: Gestión de Permisos

1. Creación de Archivos y Directorios:

    Como `usuario1`, crea un archivo llamado `archivo1.txt` en su directorio principal y escribe algo en él.
    Crea un directorio llamado `directorio1` y dentro de ese directorio, un archivo llamado `archivo2.txt`.

2. Verificar Permisos: Verifica los permisos del archivo y directorio usando el comando `ls -l` y `ls -ld` respectivamente.

3. Modificar Permisos usando `chmod` con Modo Numérico: Cambia los permisos del `archivo1.txt` para que sólo `usuario1` pueda leer y escribir (permisos `rw-`), el grupo pueda leer (permisos `r--`) y nadie más pueda hacer nada.

4. Modificar Permisos usando `chmod` con Modo Simbólico: Agrega permiso de ejecución al propietario del `archivo2.txt`.

5. Cambiar el Grupo Propietario: Cambia el grupo propietario de `archivo2.txt` a `grupo1`.

6. Configurar Permisos de Directorio: Cambia los permisos del `directorio1` para que sólo el propietario pueda entrar (permisos `rwx`), el grupo pueda listar contenidos pero no entrar (permisos `r--`), y otros no puedan hacer nada.

7. Comprobación de Acceso: Intenta acceder al `archivo1.txt` y `directorio1/archivo2.txt` como `usuario2`. Nota cómo el permiso de directorio afecta el acceso a los archivos dentro de él.

8. Verificación Final: Verifica los permisos y propietario de los archivos y directorio nuevamente con `ls -l` y `ls -ld`.

## DESARROLLO DE COMANDOS:

    denisse@Denisse:~$ cd Desktop/
    denisse@Denisse:~/Desktop$ cd Sopes\ Magistral/
    denisse@Denisse:~/Desktop/Sopes Magistral$ cd so1_actividades_201801143/
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143$ cd actividad3/
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo useradd usuario1
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo useradd usuario2
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo useradd usuario3
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo passwd usuario1
    New password: 
    BAD PASSWORD: The password is shorter than 8 characters
    Retype new password: 
    Sorry, passwords do not match.
    New password: 
    BAD PASSWORD: The password contains the user name in some form
    Retype new password: 
    Sorry, passwords do not match.
    New password: 
    BAD PASSWORD: The password fails the dictionary check - it is based on a dictionary word
    Retype new password: 
    Sorry, passwords do not match.
    passwd: Have exhausted maximum number of retries for service
    passwd: password unchanged
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo passwd usuario1
    New password: 
    Retype new password: 
    passwd: password updated successfully
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo passwd usuario2
    New password: 
    Retype new password: 
    passwd: password updated successfully
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo passwd usuario3
    New password: 
    Retype new password: 
    passwd: password updated successfully
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ id usuario1
    uid=1001(usuario1) gid=1001(usuario1) groups=1001(usuario1)
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo userdel usuario3
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo groupadd grupo1
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo groupadd grupo2
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo usermod -aG grupo1 usuario1
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo usermod -aG grupo2 usuario2
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ groups usuario1
    usuario1 : usuario1 grupo1
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ groups usuario2
    usuario2 : usuario2 grupo2
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo groupdel grupo2
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ echo "Esto es una parte de la actividad 3 de la clase magistral" > ~/archivo1.txt
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ mkdir directorio1
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ touch directorio1/archivo2.txt
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ ls -l directorio/archivo2.txt
    ls: cannot access 'directorio/archivo2.txt': No such file or directory
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ ls -ld directorio/archivo2.txt
    ls: cannot access 'directorio/archivo2.txt': No such file or directory
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ ls -ld directorio1/archivo2.txt
    -rw-rw-r-- 1 denisse denisse 0 ago  9 18:14 directorio1/archivo2.txt
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ chmod 640 archivo1.txt
    chmod: cannot access 'archivo1.txt': No such file or directory
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ chmod 640 archivo1.txt
    chmod: cannot access 'archivo1.txt': No such file or directory
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ chmod 640 archivo1.txt
    chmod: cannot access 'archivo1.txt': No such file or directory
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ chmod u+x directorio1/archivo2.txt
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ sudo chown : grupo1 directorio1/archivo2.txt
    chown: cannot access 'grupo1': No such file or directory
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ chmod 750 directorio1
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ cat archivo1.txt
    cat: archivo1.txt: No such file or directory
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ cat: archivo1.txtls -l archivo1.txt
    Command 'cat:' not found, did you mean:
    command 'catm' from deb mescc-tools (1.3-2)
    command 'cat' from deb coreutils (8.32-4.1ubuntu1)
    Try: sudo apt install <deb name>
    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ cat archivo1.txtls -l archivo1.txtcat: 

    denisse@Denisse:~/Desktop/Sopes Magistral/so1_actividades_201801143/actividad3$ 

## Reflexión:

    Contestar las siguientes preguntas:

    ¿Por qué es importante gestionar correctamente los usuarios y permisos en un sistema operativo?
    Porque podemos gestionar la información y los permisos de los usuarios que están dentro del sistema.

    ¿Qué otros comandos o técnicas conocen para gestionar permisos en Linux?

    También se puede con el usuario Root, cambiar el propietario, etc.

