# Para...hacer
Este tipo de ciclo conocido en ingles como `for loop` nos permite repetir una sección de código un numero determinado de veces. En Pascal el bucle `for` tiene la siguiente forma:
```Pascal
for <variable_contador>:=<valor_comienzo> to <valor_final> do <cuerpo>;
``` 
Donde `<variable_contador>` es una variable que se incrementara automáticamente en cada ciclo comenzando por `<valor_comienzo>` y hasta que alcance el valor indicado por `<valor_final>`. `<cuerpo>` es el código que se ejecutara repetidamente. Por ejemplo si quisiéramos imprimir por pantalla los primeros 10 números enteros podemos hacer lo siguiente:
```Pascal
for i:=1 to 10 do writeln(i);      
````
Al igual que con la sentencia `if`, si el código que queremos ejecutar consta de múltiples líneas podemos englobar estas en un bloque de código (comenzando con `begin` y finalizando con `end;`).

Veamos un ejemplo completo:

**Consigna:** calcular la suma de todos los números de un intervalo dado.

```Pascal
program suma_intervalo;
uses crt;
var i,comienzo,final,resultado:integer;
begin
  resultado:=0;
  write('Ingrese el numero inicial: ');
  readln(comienzo);
  write('Ingrese el numero final: ');
  readln(final);
  for i:=comienzo to final do
      begin
         resultado:=resultado+i;
      end;
  writeln('La suma del intervalo es: ',resultado);
  readkey;
end.
```
# Cuenta regresiva
Si necesitamos que el contador de nuestro ciclo se comporte de manera descendente en vez de manera ascendente solo debemos remplazar el termino `to` por `downto`, y además, asegurarnos de que el valor inicial se mayor al final, ya que la variable contador se decrementara en lugar de incrementarse.  

Veamos un ejemplo:
**Consigna:** mostrar una cuenta regresiva por pantalla.
```Pascal
program suma_intervalo;
uses crt;
var i:integer;
begin
  writeln('Formateando la computadora en: ');
  for i:=10 downto 0 do
      begin
         Delay(1000); // Detiene el programa un numero determinado de milisegundos
         writeln(i);
      end;
  writeln('Mentira! :)');
  readkey;
end.    
```