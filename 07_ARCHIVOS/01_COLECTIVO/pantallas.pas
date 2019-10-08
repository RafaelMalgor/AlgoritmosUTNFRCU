unit Pantallas;

interface
uses
  Tipos,crt,archivos;
Const
  MENU_COLOR=green;
  FONDO_COLOR=black;
  TEXTO_COLOR=white;
  procedure BorrarPantalla();
  procedure PantallaPrincipal(var opcion:byte);
  procedure CargarVenta();
  procedure MostrarOcupante();
implementation

  procedure SetOpcionColor(opcion,selected:byte);
  begin
      if(opcion=selected) then Textbackground(MENU_COLOR) else TextBackground(FONDO_COLOR);
  end;

  procedure BorrarPantalla();
  begin
      TextBackground(FONDO_COLOR);
      clrscr;
  end;

  procedure PantallaPrincipal(var opcion:byte);
  var
    exit:boolean;
    selected:byte;
    tecla:char;
  begin
      exit:=false;
      selected:=1;
      BorrarPantalla();
      while not exit do
      begin
          BorrarPantalla();
          SetOpcionColor(1,selected);
          writeln('1. Vender pasaje');
          SetOpcionColor(2,selected);
          writeln('2. Consultar asiento');
          SetOpcionColor(3,selected);
          writeln('3. Salir');
          tecla:=readkey;
          if tecla=#00 then tecla:=readkey;
          case tecla of
          #72: if selected>1 then selected:=selected-1;
          #80: if selected<3 then selected:=selected+1;
          #13: exit:=true;
          #27: begin
                 exit:=true;
                 selected:=0;
               end;
          end;
      end;
      opcion:=selected;
  end;

  procedure CargarVenta();
  const
    dato_asiento= 'Ingrese asiento:  ';
    dato_nombre=  'Nombre:  ';
    dato_apellido='Apellido:  ';
      dato_dni=   'DNI:  ';
      dato_edad=  'Edad:  ';
  var
    asiento:byte;
    nuevo_pasaje:Pasaje;
  begin
    BorrarPantalla();
    TextColor(blue);
    writeln(dato_asiento);
    writeln(dato_nombre);
    writeln(dato_apellido);
    writeln(dato_dni);
    writeln(dato_edad);

    TextColor(TEXTO_COLOR);
    gotoxy(length(dato_asiento),1);
    readln(nuevo_pasaje.Asiento);
    gotoxy(length(dato_nombre),2);
    readln(nuevo_pasaje.Nombre);
    gotoxy(length(dato_apellido),3);
    readln(nuevo_pasaje.Apellido);
    gotoxy(length(dato_dni),4);
    readln(nuevo_pasaje.DNI);
    gotoxy(length(dato_edad),5);
    readln(nuevo_pasaje.Edad);
    nuevo_pasaje.Ocupado:=true;
    GuardarPasaje(nuevo_pasaje);
  end;
   
  procedure MostrarOcupante();
  var
    asiento:byte;
    pas:Pasaje;
    encontrado:boolean;
  begin
      BorrarPantalla();
      write('Ingrese asiento: ');
      readln(asiento);
      BusquedaSecuencialArchivo(asiento,pas,encontrado);
      if encontrado then
      begin
         writeln('Nombre: ',pas.Nombre);
         writeln('Apellido: ',pas.Apellido);
         writeln('DNI: ',pas.DNI);
         writeln('Edad: ',pas.Edad);
      end
      else
      begin
         writeln('Asiento Desocupado');
      end;
      readkey;
  end;
begin
  TextColor(TEXTO_COLOR);
end.

