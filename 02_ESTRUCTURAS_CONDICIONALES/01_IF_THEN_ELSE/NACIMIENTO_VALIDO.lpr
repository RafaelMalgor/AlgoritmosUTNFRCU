program NACIMIENTO_VALIDO;
uses crt;
var
    anio: integer;
begin
    writeln('Ingrese un numero:'); // Explicamos al usuario lo que el programa necesita
    readln(anio); // Leemos la entrada de usuario
    if anio < 2020 then // Si el año es menor a 2020
        begin
            writeln('El año de nacimiento es valido.'); // Solo si la condicion se cumple se ejecuta esta linea.
            readkey;
        end
    else
        begin
          writeln('El año no es valido, no se pueden registrar nacimientos en el futuro.'); // Solo si la condicion no se cumple se ejecuta esta linea.
          readkey;
        end;
end.
