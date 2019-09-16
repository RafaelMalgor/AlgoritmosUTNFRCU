program jumpy;

uses
  Classes,wincrt,graph, herramientas;

Var
  Graphics, Mode : smallint;
  puntos, per_x,per_y,per_vel_y,obs_x,obs_y,obs_vel_x:integer;

begin
 Graphics:= D8bit;
 Mode := m640x480;
 InitGraph(Graphics, Mode,'');
 per_y:=getmaxy-per_altura;
 per_x:=15;
 obs_x:=getmaxx;
 obs_y:=getmaxy-65;
 obs_vel_x:=-10;
 puntos:=0;
 while not detectar_choque(per_x,per_y,obs_x,obs_y) do
 begin
   cleardevice;
   aplicar_gravedad(per_y,per_vel_y);
   if keypressed then
   begin
     readkey;
     aplicar_salto(per_y,per_vel_y);
   end;

   aplicar_velocidad(per_y,per_vel_y);
   dibujar_personaje(per_x,per_y);

   aplicar_velocidad(obs_x,obs_vel_x);
   if obs_x<=0 then
   begin
      obs_vel_x:=obs_vel_x-2;
      obs_x:=getmaxx;
      puntos:=puntos+1;
   end;
   dibujar_obstaculo(obs_x,obs_y);
   mostrar_puntaje(puntos);
   delay(25);
 end;
   mostrar_gameover();
   readkey;
end.

