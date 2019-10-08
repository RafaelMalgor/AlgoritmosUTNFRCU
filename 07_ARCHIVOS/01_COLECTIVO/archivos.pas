unit Archivos;

interface
uses Tipos,SysUtils;
const
   nombre_archivo='pasajes.dat';
   procedure GuardarPasaje(pasaje:Pasaje);
   procedure BusquedaSecuencialArchivo(asiento:integer; var res:Pasaje; var encontrado:boolean);
implementation
   procedure SeekToEOF(var archivo:ArchivoPasaje);
   var
     recCount:integer;
   begin
     recCount:=FileSize(archivo);
     Seek(archivo,recCount);
   end;

   procedure AbrirArchivo(var archivo:ArchivoPasaje);
   begin
      if not FileExists(nombre_archivo) then
       begin
           // Asocio la variable de tipo Archivo con el nombre en disco
           AssignFile(archivo,nombre_archivo);
           // Creo el archivo
           rewrite(archivo);
           // Lo cierro para confirmar con el SO
           CloseFile(archivo);
       end;
       AssignFile(archivo, nombre_archivo);
       // Abro el archivo en modo lectura
       reset(archivo);
   end;

   procedure GuardarPasaje(pasaje: Pasaje);
   var
     archivo: ArchivoPasaje;
   begin
     AbrirArchivo(archivo);
     SeekToEOF(archivo);
     Write(archivo, pasaje);
     Close(archivo);
   end;

   procedure BusquedaSecuencialArchivo(asiento:integer;var res:Pasaje; var encontrado:boolean);
   var
     archivo:ArchivoPasaje;
     pas:Pasaje;
   begin
        encontrado:=false;
        AbrirArchivo(archivo);
        while not eof(archivo) and not encontrado do
          begin
              read(archivo,pas);
              if pas.Asiento=asiento then
               begin
                 res:=pas;
                 encontrado:=true;
               end;
          end;
        Close(archivo);
   end;

end.

