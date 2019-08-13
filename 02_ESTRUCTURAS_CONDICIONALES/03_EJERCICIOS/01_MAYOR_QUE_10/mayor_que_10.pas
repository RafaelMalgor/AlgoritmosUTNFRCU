program mayor_que_10;
uses crt;
var
  numero:integer;
begin
  write('Ingrese el numero a comparar: ');
  readln(numero);
  if numero>10 then
     begin
       writeln('El numero es mayor que 10');
     end
  else
      begin
           writeln('El numero no es mayor que 10');
      end;
  readkey;
end.

