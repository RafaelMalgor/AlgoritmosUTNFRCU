program promedio_positivo;
uses crt;
var
   num1,num2,promedio:real;
begin
   write('Ingrese el primer numero: ');
   readln(num1);
   write('Ingrese el segundo numero: ');
   readln(num2);
   writeln('Los valores ingresados son: ', num1:4:4,' y ',num2:4:4);
   if (num1>0) and (num2>0) then
    begin
        promedio:=(num1+num2)/2;
        writeln('Y su promedio es: ', promedio:4:4);
    end;
   readkey;
end.

