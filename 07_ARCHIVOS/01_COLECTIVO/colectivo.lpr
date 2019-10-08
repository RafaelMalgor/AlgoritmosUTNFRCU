program colectivo;
uses Pantallas,Tipos, Archivos;

var
   exit:boolean;
   opcion:byte;
begin
  opcion:=0;
  exit:=false;
  while not exit do
  begin
      PantallaPrincipal(opcion);
      case opcion of
      1:CargarVenta();
      2:MostrarOcupante();
      3:exit:=true;
      end;
    end;
end.

