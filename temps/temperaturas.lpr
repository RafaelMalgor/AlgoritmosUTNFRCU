program temperaturas;
uses
  crt, pantallas, vectores;
var
  salir:boolean;
  opcion_select:integer;
  vtemperaturas:VTemp;
begin
   salir:=false;
   opcion_select:=1;
   InitVector(vtemperaturas,0);
   while not salir do
   begin
      PantallaPrincipal(opcion_select);
      case opcion_select of
      1: PantallaGuardar(vtemperaturas);
      2: PantallaPromedio(vtemperaturas);
      end;
   end;

end.

