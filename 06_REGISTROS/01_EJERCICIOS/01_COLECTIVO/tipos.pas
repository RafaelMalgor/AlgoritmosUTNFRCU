unit Tipos;

interface
const
  cantidad_asientos=56;
type
  Pasaje=record
    Nombre:string;
    Apellido:string;
    Edad:byte;
    DNI:string;
    Ocupado:boolean;
  end;
 V_Colectivo=array[1..cantidad_asientos] of Pasaje;
implementation

end.

