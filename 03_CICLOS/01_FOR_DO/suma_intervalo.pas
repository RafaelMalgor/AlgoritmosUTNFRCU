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

