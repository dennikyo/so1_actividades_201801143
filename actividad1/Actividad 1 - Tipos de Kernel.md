# ACTIVIDAD I, INVESTIGACIÓN
## Ana Denisse Figueroa Marroquín
## Carnet: 201801143
## Sistemas Operativos I

#
#
#

# KERNEL
## ¿ Qué es ?
El núcleo o kernel es la parte central de un sistema operativo y es el que se encarga de realizar toda la comunicación segura entre el software y el hardware del ordenador mediante las llamadas al sistema, además de proveer de una API y otras funciones esenciales. Por ese motivo es la parte más importante de cualquier sistema operativo.

## Tipos de Kernel

Exokernel:

Permite una mayor eficiencia y rendimiento, ya que las aplicaciones pueden evitar la sobrecarga del sistema operativo.
Es un enfoque radicalmente diferente que proporciona a las aplicaciones un mayor control sobre los recursos de hardware.
El exokernel expone directamente los recursos de hardware a las aplicaciones, lo que les permite administrarlos directamente.


Microkernel:

Proporciona una mayor estabilidad y seguridad, ya que los fallos en los servicios externos no afectan directamente al kernel.
Solo implementa funciones esenciales, como la gestión de memoria y la comunicación entre procesos.
Los servicios adicionales, como sistemas de archivos y controladores de dispositivos, se ejecutan como procesos fuera del kernel.


Kernel Híbrido:

Es una combinación de características del kernel monolítico y del microkernel.
Algunas partes del kernel se ejecutan en el espacio de direcciones del kernel (modo kernel), mientras que otras partes se ejecutan en el espacio de direcciones de los procesos (modo usuario).
Proporciona un mejor rendimiento en comparación con el microkernel puro debido a que algunas operaciones críticas se realizan en modo kernel.



Kernel Monolítico:

Es el tipo de kernel más antiguo y más simple.
Todas las funciones del sistema operativo se ejecutan en un solo espacio de direcciones.
Tiene acceso directo a todas las partes del sistema y puede acceder a los dispositivos de hardware directamente.
Si una parte del kernel falla, puede afectar a todo el sistema.


#
#
#
#
## USER MODE VS KERNEL MODE

# Modo de usuario: 
Es cuando un programa se inicia en un sistema operativo, digamos Windows, luego inicia el programa en modo de usuario. Y cuando un programa en modo usuario solicita ejecutarse, Windows crea un proceso y un espacio de direcciones virtuales (espacio de direcciones para ese proceso). Los programas de modo de usuario tienen menos privilegios que las aplicaciones de modo de usuario y no se les permite acceder a los recursos del sistema directamente. Por ejemplo, si una aplicación en modo de usuario desea acceder a los recursos del sistema, primero deberá pasar por el kernel del sistema operativo mediante llamadas al sistema.

# Modo Kernel: 
El kernel es el programa central en el que se basan todos los demás componentes del sistema operativo, se utiliza para acceder a los componentes de hardware y programar qué procesos deben ejecutarse en un sistema informático y cuándo, y también administra la interacción entre el software y el hardware de la aplicación. Por lo tanto, es el programa más privilegiado, a diferencia de otros programas, puede interactuar directamente con el hardware. Cuando los programas que se ejecutan en modo de usuario necesitan acceso al hardware, por ejemplo, una cámara web, primero tiene que pasar por el núcleo mediante una llamada al sistema y, para llevar a cabo estas solicitudes, la CPU cambia del modo de usuario al modo de núcleo en el momento de la ejecución. Después de completar finalmente la ejecución del proceso, la CPU vuelve a cambiar al modo de usuario.