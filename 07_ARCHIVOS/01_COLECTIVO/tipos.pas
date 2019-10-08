unit Tipos;

interface
const
  cantidad_asientos=56;
type
  Pasaje=record
    Nombre:string[40];
    Apellido:string[40];
    Edad:byte;
    DNI:string[10];
    Ocupado:boolean;
    Asiento:integer;
  end;
 V_Colectivo=array[1..cantidad_asientos] of Pasaje;
 ArchivoPasaje=File of Pasaje;
implementation

end.

