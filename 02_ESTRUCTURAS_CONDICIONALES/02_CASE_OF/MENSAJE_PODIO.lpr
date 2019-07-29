program MENSAJE_PODIO;
uses crt;
var
  puesto: integer;
begin
  write('Ingrese el puesto: ');
  readln(puesto);
  case puesto of
     1: writeln('Impresionante! Ganaste la medalla de oro');
     2: writeln('Felicidades! Ganaste la medalla de plata');
     3: writeln('Buen trabajo! Ganaste la medalla de bronce');
     else
       writeln('No has ingresado al podio, mucha suerte para la proxima!');
     end;
  readkey;
end.


