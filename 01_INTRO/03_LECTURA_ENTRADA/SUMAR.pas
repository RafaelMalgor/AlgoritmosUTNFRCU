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
    resultado:=operando1+operando2;
    writeln('El resutaldo es: ',resultado:12:2);
    readkey;
end.
