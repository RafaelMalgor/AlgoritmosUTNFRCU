unit pantallas;

{$mode objfpc}{$H+}

interface
uses
  crt,vectores;
const
  fondo=black;

  procedure MenuPrincipal(var selected:integer);
  procedure BorrarPantalla();
  procedure PantallaGuardar(var temperaturas:VTemp);
  procedure PantallaPromedio(var temperaturas:VTemp);
implementation
  procedure MenuPrincipal(var selected:integer);
  var
    exit:boolean;
    key:char;
  begin
    exit:=false;
    selected:=1;
    while not exit do
    begin
       BorrarPantalla();
       if selected=1 then TextBackground(green) else TextBackground(black);
       writeln('1. Guardar Temperatura');
       if selected=2 then TextBackground(green) else TextBackground(black);
       writeln('2. Calcular Promedio');
       if selected=3 then TextBackground(green) else TextBackground(black);
       writeln('3. Salir');
       key:=readkey;
       if key=#00 then
       begin
          key:=readkey;
       end;
       case key of
       #72: if selected>1 then selected:=selected-1;
       #80: if selected<3 then selected:=selected+1;
       #13: exit:=True;
       end;
    end;
    BorrarPantalla();
  end;

  procedure BorrarPantalla();
  begin
    Textbackground(black);
    clrscr;
  end;


  procedure PantallaGuardar(var temperaturas:VTemp);
  var
    i:integer;
  begin
    for i:=1 to 7 do
    begin
       BorrarPantalla();
       TextColor(green);
       write('Ingrese temperatura del ',VDias[i],': ');
       TextColor(LightGray);
       readln(temperaturas[i]);
    end;
    BorrarPantalla();
  end;

  procedure PantallaPromedio(var temperaturas:VTemp);
  var
    i:integer;
    sum,promedio:real;
  begin
      for i:=1 to 7 do
      begin
         sum:=sum+temperaturas[i];
      end;
      promedio:=sum/7;
      writeln('El promedio semanal es: ',promedio);
      readkey;
      BorrarPantalla();
  end;

end.

