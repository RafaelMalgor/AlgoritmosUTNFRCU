unit pantallas;

interface
uses
  crt, vectores;
const
  fondo=black;

  procedure PantallaPrincipal(var opcion:integer);
  procedure BorrarPantalla();
  procedure PantallaGuardar(var vtemperatura: VTemp);
  procedure PantallaPromedio(var vtemperatura:VTemp);
implementation
  procedure PantallaPrincipal(var opcion:integer);
  var
    key:char;
  begin
    opcion:=1;
    repeat
          BorrarPantalla();
          if opcion=1 then Textbackground(green)
          else Textbackground(fondo);
          writeln('1. Guardar temperatura');
          if opcion=2 then Textbackground(green)
          else Textbackground(fondo);
          writeln('2. Calcular promedio  ');
          key:=readkey;
          if key=#00 then
          begin
            key:=readkey;
          end;
          case key of
             #72: if opcion>1 then opcion:=opcion-1;
             #80: if opcion<2 then opcion:=opcion+1;
          end;
    until key=#13;
    BorrarPantalla();
  end;

  procedure BorrarPantalla();
  begin
    Textbackground(fondo);
    clrscr;
  end;

  procedure PantallaGuardar(var vtemperatura:VTemp);
  var
    i:integer;
  begin
     for i:=1 to 7 do
     begin
        BorrarPantalla();
        writeln('Ingrese la temp. del ',VDias[i],': ' );
        readln(vtemperatura[i]);
     end;
     BorrarPantalla();
  end;

    procedure PantallaPromedio(var vtemperatura:VTemp);
    var
      i:integer;
      sumas,promedio:real;
    begin
      BorrarPantalla();
      sumas:=0;
      for i:=1 to 7 do
      begin
        sumas:=sumas+vtemperatura[i];
      end;
      promedio:=sumas/7;
      writeln('El promedio es: ', promedio:0:2);
      readkey;
    end;

end.

