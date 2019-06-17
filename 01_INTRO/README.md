# Introducción 
## Lenguaje de Programación
Un lenguaje de programación es un lenguaje formal que proporciona una serie de instrucciones que permiten a un programador escribir secuencias de órdenes y algoritmos a modo de controlar el comportamiento físico y lógico de una computadora

## Pascal
Pascal es un lenguaje creado por el profesor suizo Niklaus Wirth entre los años 1968 y 1969 y publicado en 1970. Su objetivo era crear un lenguaje que facilitara el aprendizaje de programación a sus alumnos, utilizando la programación estructurada y estructuración de datos.

## Compilador
Un compilador es un tipo de traductor que transforma un programa entero de un lenguaje de programación (llamado código fuente) a otro, usualmente a código maquina para que pueda ser ejecutado.

## IDE
Un entorno de desarrollo integrado, en inglés Integrated Development Environment (IDE), es una aplicación informática que proporciona servicios integrales para facilitarle al desarrollador o programador el desarrollo de software.

## Lazarus
Lazarus es un IDE para Pascal (y Delphi). 
[Descargar](https://www.lazarus-ide.org/index.php?page=downloads)

## Hola Mundo en Pascal
Aquí presentaremos y analizaremos nuestro primer programa en pascal que consiste en el clásico "Hola Mundo".
### Completo
```pascal
// Mi primer programa
program HOLA_MUNDO;
uses crt;
begin
  writeln('Hola, mundo!');
  readkey;
end.
```
### Explicación
La primera sentencia
```pascal
// Mi primer programa
```
es un comentario. Los comentarios comienzan con `//`, esto le indica al compilador que esta línea de código debe ser ignorada. Los comentarios para proveer información a las personas que leen el código ya sea para entenderlo o modificarlo y no afectan a la ejecución.
La primera sentencia
```pascal
 program HOLA_MUNDO;
 ```
indica el comienzo del programa, siempre colocamos la palabra reservada `program` y junto a ella el nombre de nuestro programa finalizando con un `;`.

La sentencia 
```pascal
uses crt;
```
importa (referencia) el modulo `crt`. Estos conceptos se profundizaran mas adelante, por ahora basta con saber que es necesaria para poder imprimir por pantalla.

La sentencia
```pascal
begin
```
marca el comienzo de el cuerpo principal del programa.

La línea de código 
```pascal
  writeln('Hola, mundo!');
  ```
imprime el el texto por consola. `writeln` es la sentencia que indica al programa que debe imprimir texto por consola y `Hola mundo!` es el texto. Este texto tiene una particularidad, esta escrito entre comillas `''`, esto le indica al programa que es una cadena literal, es decir que es texto que no es parte del algoritmo del programa sino que es un dato.

La sentencia
```pascal
readkey;
```
indica al programa que espere a que el usuario presione una tecla. Esto hace que el programa se detenga en ese punto, en este caso, permitiendo al usuario leer lo que acabamos de imprimir. Sin esta sentencia el programa se cerraría inmediatamente.

Finalmente la sentencia
```pascal
end.
```
indica el fin de nuestro programa.