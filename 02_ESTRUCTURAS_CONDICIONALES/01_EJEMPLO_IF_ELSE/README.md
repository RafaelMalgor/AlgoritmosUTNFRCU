# Si A entonces B
La estructura de control mas utilizada en los lenguajes de programación estructurada es la sentencia `if`. Esta nos permite avaluar una valor booleano, solo si este valor es verdadero, entonces la sección de código delimitada por la sentencia `if` será ejecutada. 
La sentencia `if` tiene la siguiente forma en Pascal:
```Pascal
    if <condicion> then <cuerpo>;
```
Donde `<condicion>` lo debemos remplazar por una expresión booleana (una variable de tipo booleana o una operación de comparación) y `<cuerpo>` lo remplazamos por la línea de código que queremos ejecutar, por ejemplo, si tenemos una variable `mi_numero` y queremos ver si es mayor a `10`:
```Pascal
if mi_numero > 10 then writeln('El numero es mayor a 10');
```
El símbolo `>` es un operador de comparación, significa `mayor que` y da como resultado verdadero si el primer operando es mayor al segundo, caso contrario da como resultado falso. Pronto veremos que otros operadores tenemos disponibles.

Si el código que queremos ejecutar en caso de que la condición se verdadera consiste de varias líneas, entonces debemos utilizar un bloque de código. Un bloque de código comienza con `begin` y termina con `end;` y entre estas sentencias podemos colocar cuantas líneas de código necesitemos. Este concepto de bloque nos será de utilizad para todas las estructuras de control que aprendamos de aquí en adelante.

Veamos un ejemplo completo:

**Consigna:** Imprimir si el año de nacimiento es valido.
```Pascal
program NACIMIENTO_VALIDO;
uses crt;
var
    anio: integer;
begin
    writeln('Ingrese un numero:'); // Explicamos al usuario lo que el programa necesita
    readln(anio); // Leemos la entrada de usuario
    if anio < 2020 then // Si el año es menor a 2020
        begin
            writeln('El año de nacimiento es valido.'); // Solo si la condicion se cumple se ejecuta esta linea.
            readkey;
        end;
end.       
```

### Sino
Si ejecutan el código del ejemplo, notaran que si ingresamos un año menor a 2020, entonces el mensaje de muestra correctamente, sin embargo si ingresamos un valor mayor, el programa se cierra. Esto ocurre ya que solo escribimos código para el caso en que el año sea correcto, pero que pasa si queremos mostrar un mensaje en caso de que sea incorrecto, por ejemplo `El año no es valido, no se pueden registrar nacimientos en el futuro.`. Para estos casos existe la sentencia `else`, que acompaña a la sentencia `if`, y cuyo código solo se ejecuta si la condición no se cumple. 
La forma básica es la siguiente:
```Pascal
    if <condicion> then <cuerpo> else <alternativa>;
```
Para la sección `<alternativa>` también podes utilizar un bloque si necesitamos multiplillos líneas de código.
Así, podemos modificar el ejemplo anterior de la siguiente manera:
```Pascal
program NACIMIENTO_VALIDO;
uses crt;
var
    anio: integer;
begin
    writeln('Ingrese un numero:'); // Explicamos al usuario lo que el programa necesita
    readln(anio); // Leemos la entrada de usuario
    if anio < 2020 then // Si el año es menor a 2020
        begin
            writeln('El año de nacimiento es valido.'); // Solo si la condicion se cumple se ejecuta esta linea.
            readkey;
        end
    else
        begin
          writeln('El año no es valido, no se pueden registrar nacimientos en el futuro.'); // Solo si la condicion no se cumple se ejecuta esta linea.
          readkey;
        end;
end.
```