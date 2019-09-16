program barrita;
uses graph, wincrt, herramientas;

var
  Graphics, Mode: smallint;
  per_x,per_y,per_vel_y:integer;


begin
   Graphics:= D8bit;
   Mode := m640x480;
   initGraph(Graphics,Mode,'');
   per_x:=15;
   per_y:=15;//getmaxy-per_alto;
   per_vel_y:=0;
   while True do
   begin
     cleardevice;
     aplicar_gravedad(per_y,per_vel_y);
     aplicar_velocidad(per_y,per_vel_y);
     dibujar_personaje(per_x,per_y);
     Delay(500);
   end;
end.

