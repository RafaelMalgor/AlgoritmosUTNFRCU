program temperatura;

uses pantallas,crt, vectores;
var
  s:integer;
  temperaturas:VTemp;
begin
  repeat
  MenuPrincipal(s);
  case s of
  1: PantallaGuardar(temperaturas);
  2: PantallaPromedio(temperaturas);
  end;
  until s=3;
end.

