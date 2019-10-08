program colectivo;
uses Pantallas,Tipos;

var
   exit:boolean;
   opcion:byte;
   cole:V_Colectivo;
begin
  opcion:=0;
  exit:=false;
  while not exit do
  begin
      PantallaPrincipal(opcion);
      case opcion of
      1:CargarVenta(cole);
      2:MostrarOcupante(cole);
      3:exit:=true;
      end;
    end;
end.

