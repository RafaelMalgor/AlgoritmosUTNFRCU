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
imprime el el texto por consola. `writeln` es la sentencia que indica al programa que debe imprimir texto por consola y `Hola mundo!` es el texto. Este texto tiene una particularidad, esta escrito entre comillas `''`, esto le indica al programa que es una cadena literal, es decir que es texto que no es parte del algoritmo del programa sino que es un dato. Existe también la sentencia `write` que se comporta de manera muy similar a `writeln`, la diferencia es que `writeln` imprime el texto en una línea nueva y además agrega un salto de línea al final, mientras que `write` imprime en la posición actual del cursor.  

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

## Tarea
Una vez comprendido el funcionamiento básico del programa intentar:
1. Imprimir un mensaje distinto.
2. Imprimir varios mensajes.
3. Imprimir un mensaje, esperar a que el usuario presione una tecla y luego imprimir otro.