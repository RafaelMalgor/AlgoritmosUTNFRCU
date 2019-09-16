unit herramientas;

interface
  uses graph;
  procedure dibujar_personaje(x,y:integer);
  procedure aplicar_gravedad(var pos, vel:integer);
  procedure aplicar_salto(var pos, vel:integer);
  procedure aplicar_velocidad(var pos,vel:integer);
  procedure dibujar_obstaculo(var x,y:integer);
  function detectar_choque(per_x,per_y,obs_x,obs_y:integer):boolean;
  procedure mostrar_puntaje(puntos:integer);
  procedure mostrar_gameover();
const
    gravedad=2;
    salto=18;
    per_altura=40;
implementation
   procedure dibujar_personaje(x,y:integer);
   begin
     SetColor(red);
     SetFillStyle(SolidFill,cyan);
     Bar(x,y,x+20,y+40);
   end;

   procedure aplicar_gravedad(var pos, vel:integer);
   begin
     if pos<getmaxy-per_altura then
        vel:=vel+gravedad
     else
        vel:=0
   end;

   procedure aplicar_salto(var pos, vel:integer);
   begin
     if vel=0 then
        vel:=vel-salto;
   end;

   procedure aplicar_velocidad(var pos,vel:integer);
   begin
     pos:=pos+vel;
   end;

   procedure dibujar_obstaculo(var x,y:integer);
   begin
     SetColor(red);
     SetFillStyle(SolidFill,red);
     Bar(x,y,x+30,y+65);
   end;

   function detectar_choque(per_x,per_y,obs_x,obs_y:integer):boolean;
   begin
     detectar_choque:=(obs_x-per_x<20)and (obs_y-per_y<per_altura);
   end;

   procedure mostrar_puntaje(puntos:integer);
   var texto,texto_puntos:string;
   begin
      str(puntos,texto_puntos);
      texto:='Total de Puntos: '+texto_puntos;
      SetColor(green);
      outTextXY((getMaxX - TextWidth(texto)) div 2,
            (getMaxY - TextHeight(texto)) div 2,texto);
   end;

   procedure mostrar_gameover();
   var texto:string;
   begin
      texto:='GAME OVER!';
      SetColor(RED);
      SetTextStyle(10,0,2);
      outTextXY((getMaxX - TextWidth(texto)) div 2,
            (getMaxY + TextHeight(texto)) div 2,texto);
   end;

end.

