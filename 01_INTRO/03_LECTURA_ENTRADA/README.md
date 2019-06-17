# Lectura de Entrada
Ya hemos visto como podemos realizar un programa que haga operaciones matemáticas por nosotros, como por ejemplo sumar 2 valores. Por ejemplo:
```pascal
program SUMAR;
begin
    writeln(10+2);
end.
```
Sin embargo en este ejemplo, si quisiésemos saber el resultado de la suma de otros 2 números tendríamos que modificar el programa. Seria mucho más practico si pudiésemos crear un programa que funcione para cualquier par de números que le ingresemos, sin tener que modificarlo. Para ello utilizaremos la sentencia `readln`. Si queremos leer un valor ingresado por el usuario y almacenarlo en la variable `operando1` entonces escribiremos `readln(operando1);`.

## Ejemplo completo
```pascal
program SUMAR;
uses crt;
var
    operando1: real;
    operando2: real;
    resultado: real;
begin
    write('Ingrese el primer numero: ');
    readln(operando1);
    write('Ingrese el segundo numero: ');
    readln(operando2);
    resultado:=operando1 + operando2;
    writeln('El resutaldo es: ', resultado:12:2);
    readkey;
end.                                    
```
Primero declaramos las variables, una para cada numero a ser sumado y una para almacenar el resultado:
```pascal
var
    operando1: real;
    operando2: real;
    resultado: real;
```

Luego, lo primero que hacemos es indicarle al usuario lo que queremos que ingrese:
```pascal
    write('Ingrese el primer numero: ');
```
Utilizamos `write` en lugar de `writeln`, ya que no queremos que el programa salte hacia una nueva línea. 

Finalmente leemos el valor ingresado por el usuario:
```pascal
    readln(operando1);
```
La sentencia `readln` detendrá el programa hasta que el usuario ingrese el valor solicitado.
Repetimos el mismo proceso para el segundo numero:
```pascal
    write('Ingrese el segundo numero: ');
    readln(operando2);
```

Una vez que tenemos ambos valores, calculamos la suma de estos almacenándola en la variable correspondiente:
```pascal
    resultado:=operando1 + operando2;
```

Finalmente imprimimos el resultado por consola para que el usuario pueda leerlo:
```pascal
writeln('El resutaldo es: ', resultado:12:2);
```
Obsérvese como `writeln` puede aceptar mas de un valor si los separamos con `,`. En este caso mostramos un mensaje indicativo al usuario y luego el resultado. Junto a la variable `resultado` vemos unos números separados por `:`, estos se utilizan para formatear como los valores numéricos son mostrados. En este caso mostramos hasta 12 valores enteros y hasta 2 valores significativos después de la coma.