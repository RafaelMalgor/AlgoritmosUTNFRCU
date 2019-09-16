program menu;
{$codepage UTF8}
uses crt;
var
  selected:integer;
  key:char;
  exit:boolean;
begin
  exit:=false;
  selected:=1;
  while not exit do
  begin
    TextBackground(BLACK);
    clrscr;
    if selected=1 then TextBackground(GREEN) else TextBackground(BLACK);
    writeln('1. Opcion 1');
    if selected=2 then TextBackground(GREEN) else TextBackground(BLACK);
    writeln('2. Opcion 2');
    if selected=3 then TextBackground(GREEN) else TextBackground(BLACK);
    writeln('3. Opcion 3');
    if selected=4 then TextBackground(GREEN) else TextBackground(BLACK);
    writeln('4. Opcion 4');
    key:=readkey;
    case key of
      #00:
        begin
         key:=readkey;
         case key of
           #72: if selected>1 then selected:=selected-1 else selected:=4;
           #80: if selected<4 then selected:=selected+1 else selected:=1;
         end;
        end;
      #27:
        begin
          exit:=True;
        end;
      #13:
        begin
            gotoxy(15,15);
            TextBackground(BLACK);
            write('Se selecciono la opcion: ',selected);
            readkey;
        end;
    end;
  end;
end.

