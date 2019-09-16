program simple_calc;
uses crt, matematica;
var
  resultado, r: real;
  e:integer;
  k: char;


// Cuerpo principal
begin
   resultado:=0;
   repeat
     TextBackground(BLACK);
     clrscr;
     gotoxy(1,1);
     TextBackground(LightBlue);
     write('Resultado: ',resultado:0:2);
     TextBackground(BLACK);
     gotoxy(1,4);
     TextColor(GREEN);
     write('---------------------------------------');
     gotoxy(1,5);
     write('AYUDA: +. Suma   -. Resta   ^. Potencia');
     TextColor(LightGray);
     gotoxy(1,2);
     k:=readkey;
     case k of
          '+':
            begin
                write(resultado:0:2,' + ');
                readln(r);
                resultado:=sumar(resultado,r);
            end;
          '-':
            begin
                write(resultado:0:2,' - ');
                readln(e);
                resultado:=resta(resultado,e);
            end;
          '^':
            begin
                write(resultado:0:2,'^');
                readln(e);
                resultado:=potencia(resultado,e);
            end;
     end;
   until k=#27;
end.

