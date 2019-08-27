program hipotenusa;
uses crt;
var
  cateto_opuesto:real;
  cateto_adyacente:real;
  resultado:real;
begin
  write('Ingrese el cateto adyacente: ');
  readln(cateto_adyacente);
  write('Ingrese el cateto opuesto: ');
  readln(cateto_opuesto);
  resultado:=sqrt(cateto_opuesto*cateto_opuesto+cateto_adyacente*cateto_adyacente);
  write('La hipotenusa es: ', resultado:0:4);
  readkey;
end.

