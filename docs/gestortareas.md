
## Gestores considerados

- `magefile`: Este gestor usa un archivo de `go` para especificar las tareas. Al ser código se puede ejecutar diretamente en windows.
  - ventajas:
    - accesible para quién sepa `go `. No hace falta conocer un DSL para poder leer y mantener los archivos que usa el gestor de tareas
    - por ello, tiene más facilidad de meter código complejo usando bucles y las demás características de un lenguaje de alto nivel.
  - inconvenientes:
    - el comando que tiene que ejecutarse se especifica como una función que tiene de argumentos la orden que se ejecuta en terminal y  el entorno en el que se ejecuta la orden, lo cuál hace que pierda legibilidad
- `Cmake`: Es un generador de archivos que usan los gestores de tareas.
  - ventajas:
    - el archivo con el que se especifican las tareas es fácil de entender.
    - posibilidad de generar archivos para gestores de tareas en distintas plataformas.
    - ahorrarse deuda técnica al poder cambiar de gestor de tareas base con cierta facilidad.
  - inconvenientes:
    - por otra puede generar deuda técnica por añadir el paso de usar `CMake` junto al gestor de tareas base.
- `task`: este gestor está escrito en go, lee archivos escritos en YAML y está diseñado para ser más simple que otros gestores
  - ventajas:
    - el formato YAML es bastante fácil de leer al estar conformado de claves seguidas por sus respectivos valores

  - inconvenientes:
    - el mismo formato condiciona que hagan falta más líneas de código para leer

- `just`: aunque sirva para lo mismo que un gestor de tareas, ``just`` es un "ejecutador de comandos" escrito en `rust`
  - ventajas:
    - permite que ejecutar órdenes e una gran cantidad de lenguajes interpretados como `Python`

- `Make`: es el gestor de tareas más utilizado a lo largo de los años y que más ha tenido un uso continuado
  - ventajas:
    - la comunidad que tiene detrás es muy grande y hay una gran cantidad de recursos de ayuda
    - dispone de macros, que facilitan escribir órdenes para trabajar con

  - desventajas:
    - al no haberse pensado para ejecutar tareas que no generen archivos hace falta introducir opciones que hacen que el archivo Makefile sea menos legibles de una forma inmediata.
    - en general es una herramienta pensada para trabajar con `C` y `C++`, lo que hace que haya que adaptarla cuando estamos con otros lenguajes.


## Decisión

`CMake` es muy potente pero usar en un proyecto que no necesita llevar a cabo tareas en distintas plataformas a la vez, dependiendo del usuario. Dado que en el futuro se desplegará en un



`magefile` se hace para quien que no quiera trabajar con un gestor tradicional, lo cual introduce una forma distinta de especificar las tareas.



`Make` puede resultar poco accesible, por la cantidad de características que tiene, pero por ello Es más potente, lo que al final da más facilidad a la hora de especificar las tareas que hacen falta ejecutar. Al considerarse una característica más importante se eligirá este sobre los demás, tratando así de evitar crearnos deuda técnica al trabajar con un gestor más simple como `just` o `task`
