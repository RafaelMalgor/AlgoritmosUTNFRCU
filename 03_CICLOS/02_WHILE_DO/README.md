# Mientras...hacer
En el sección anterior vimos como podíamos lograr que una sección de código se repita un numero determinado de veces. Pero que pasa si queremos que nuestro código se repita indefinidamente hasta que 'pase algo', es decir, se cumpla una condición?
Para esto contamos con la estructura de ciclo que se conoce en ingles como `while loop`. En Pascal el bucle `while` tiene la siguiente forma:
```Pascal
while <condicion> do <cuerpo>;
```
Donde `<condicion>` lo debemos remplazar por una expresión booleana (una variable de tipo booleana o una operación de comparación) y `<cuerpo>` es el código que queremos repetir. Como en todos los casos que hemos visto, si queremos que `<cuerpo>` contenga múltiples líneas de código, debemos utilizar un bloque. Por ejemplo:
```Pascal
program situacion_materia;
uses crt;
const
    frase_ingreso='Ingrese la nota del alumno: ';
var
    nota: real;
begin
    write(frase_ingreso);
    readln(nota);
    while (nota<0) or (nota>10) do
        begin
            writeln('La nota ingresada no es valida.');
            write(frase_ingreso);
            readln(nota);
        end;
  if nota<4 then writeln('El alumno desaprobo')
  else if nota<7 then writeln('El alumno regularizo')
  else writeln('El alumno promociono');

  if nota<4 then writeln('El alumno desaprobo')
  else
    if nota<7 then writeln('El alumno regularizo')
        else
            writeln('El alumno promociono');

  readkey;
end.                                        
```
# Nota
Tengamos en cuenta que el bucle `while` se detendrá si, y solo si, la condición se cumple, es decir que nosotros debemos asegurarnos en nuestro programa que la condición se cumpla en algún momento o este nunca se detendrá. Observemos que ocurre si ejecutamos el siguiente código:
```Pascal
program saludo_eterno;
begin
     while 5>4 do writeln('Hola :)');
end.
```