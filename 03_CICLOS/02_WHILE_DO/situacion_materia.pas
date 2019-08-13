program situacion_materia;
uses crt;
const
    frase_ingreso='Ingrese la nota del alumno: ';
var
    nota: real;
begin
    write(frase_ingreso);
    readln(nota);
    while (nota<0) or (nota>10) do
        begin
            writeln('La nota ingresada no es valida.');
            write(frase_ingreso);
            readln(nota);
        end;

  if nota<4 then writeln('El alumno desaprobo')
  else if nota<7 then writeln('El alumno regularizo')
  else writeln('El alumno promociono');

  if nota<4 then writeln('El alumno desaprobo')
  else
    if nota<7 then writeln('El alumno regularizo')
        else
            writeln('El alumno promociono');

  readkey;
end.
