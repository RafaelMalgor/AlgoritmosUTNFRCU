unit vectores;

interface
const

  VDias:array[1..7] of string=('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo');
type
   VTemp=array[1..7] of real;

   procedure InitVector(var vector:VTemp; valor:real);

implementation

procedure InitVector(var vector:VTemp;valor:real);
   var
     i:integer;
   begin
     for i:=1 to 7 do
     begin
       vector[i]:=valor;
     end;
   end;

end.

