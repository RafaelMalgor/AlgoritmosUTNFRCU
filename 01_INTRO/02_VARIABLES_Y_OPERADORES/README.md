# Variables
En programación, las variables son espacios reservados en la memoria que, como su nombre indica, pueden cambiar de contenido a lo largo de la ejecución de un programa. Nos permiten guardar valores o resultados que guardaremos a lo largo de nuestro programa. 
En Pascal todas las variables que vayamos a utilizar deben ser declaradas en una sección especial del programa, esta sección comienza con la palabra reservada `var`. Cada variable puede guardar solo un tipo de dato (numérico, cadena de texto, etc.) y debe ser indicado por el programador. Para declarar una variable debemos indicar su nombre, luego `:` y finalmente el tipo de dato. 
Las variables pueden tener cualquier nombre, siempre y cuando comiencen con una letra o un `_`. Es recomendable que el nombre de una variable refleje para que esta siendo utilizada, es decir, si queremos almacenar la edad de una persona, entonces el nombre `edad_persona` es mas útil que `variable1` o `aaa`, etc.
Analicemos el siguiente ejemplo:
```pascal
program VARIABLES;
uses crt;
var
  suma: integer;
begin
  suma:=10+2;
  writeln(suma);
  readkey;
end.
```
A nuestra estructura básica de programa le hemos agregado una nueva sección:
```pascal
var
  suma: integer;
```
aquí estamos declarando una variable llamada `suma` de tipo `integer`(entero).

Luego utilizamos dicha variable para almacenar el resultado de una simple suma:
```pascal
  suma:=10+2;
```
Como vemos, en Pascal, para asignar un valor a una variable colocamos su nombre, luego el operador de asignación `:=` y finalmente el valor que queremos asignar, en este caso el resultado de `10+2`.

# Tipos
A medida que avancemos con el aprendizaje iremos aprendiendo nuevos tipos que podremos utilizar en Pascal. Algunos ejemplos son:
- integer: numeros enteros.
- real: numeros reales.
- string: cadena de texto.

# Operadores
Los operadores son símbolos especiales que le indican al programa que realice ciertas operaciones aritméticas o lógicas. A medida que avancemos descubriremos distintos tipos de operadores, algunos ejemplos son:
- Aritméticos:
    - `+` : suma 2 valores, como en el ejemplo `suma:=10+2`.
    - `-` : substrae un valor de otro, por ejemplo `resta:=8-3;`.  
    - `*` : producto de 2 valores, por ejemplo `producto:=4*4;`.
    - `/` : divide un valor por otro, por ejemplo `division:=8/2;`.