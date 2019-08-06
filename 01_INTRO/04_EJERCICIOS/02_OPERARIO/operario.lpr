program operario;
uses crt;
var
  val_hora:real;
  horas_trabajadas:integer;
  sueldo:real;
begin
  write('Ingrese el valor de la hora: ');
  readln(val_hora);
  write('Ingrese la cantidad de horas trabajadas: ');
  readln(horas_trabajadas);
  sueldo:=val_hora*horas_trabajadas;
  write('El sueldo es: ', sueldo:4:4);
  readkey;
end.

