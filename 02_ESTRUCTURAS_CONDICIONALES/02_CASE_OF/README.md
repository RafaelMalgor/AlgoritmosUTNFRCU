# En Caso De
Como vimos en la unidad anterior, si pretendemos que una sección de nuestro código se ejecute dependiendo de cierta condición podemos utilizar la sentencia `if`. Sin embargo esta no es la única estructura condicional con la que contamos, existe también el `case of`, conocido coloquialmente como "Según" o "En Case De". La estructura de es la siguiente:
```pascal
CASE <variable> OF
    <valor_1>: <cuerpo_1>;
    <valor_2>: <cuerpo_2>;
    .
    .
    .
    <valor_n>: <cuerpo_n>;
    else <cuerpo_alternativo>;
```
Donde `<variable>` es la variable cuyo valor queremos usar como control para seleccionar que parte del código debe ejecutarse. `<valor_1>`, `<valor_2>`, etc. son alguno de los posibles valores que puede contener `<variable>` y `<cuerpo_1>`, `<cuerpo_2>`, etc. son las secciones de código correspondiente a cada valor. Finalmente `<cuerpo_alternativo>` es la sección de código que se ejecutara en caso de que `<variable>` contenga un valor que no se encuentra especificado.

Veamos un ejemplo:

**Consigna:** Mostrar que medalla corresponde a cada puesto.
```pascal
program MENSAJE_PODIO;
uses crt;
var
  puesto: integer;
begin
  write('Ingrese el puesto: ');
  readln(puesto);
  case puesto of
     1: writeln('Impresionante! Ganaste la medalla de oro');
     2: writeln('Felicidades! Ganaste la medalla de plata');
     3: writeln('Buen trabajo! Ganaste la medalla de bronce');
     else
       writeln('No has ingresado al podio, mucha suerte para la proxima!');
     end;
  readkey;
end.  
```