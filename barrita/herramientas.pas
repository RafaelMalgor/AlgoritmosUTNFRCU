unit herramientas;

{$mode objfpc}{$H+}

interface
uses
  graph;

   procedure dibujar_personaje(x,y:integer);
   procedure aplicar_gravedad(var per_y,per_vel_y:integer);
   procedure aplicar_velocidad(var per_y,vel:integer);
   const
  per_ancho=20;
  per_alto=40;
  gravedad=2;
implementation
   procedure dibujar_personaje(x,y:integer);
   begin
      SetFillStyle(SolidFill,cyan);
      Bar(x,y,x+per_ancho, y+per_alto);
   end;

   procedure aplicar_gravedad(var per_y,per_vel_y:integer);
   begin
      if per_y<getmaxy-2*per_alto then
      per_vel_y:=per_vel_y + gravedad
      else
        per_vel_y:=0;
   end;

    procedure aplicar_velocidad(var per_y,vel:integer);
    begin
       per_y:=per_y+vel;
    end;

end.

