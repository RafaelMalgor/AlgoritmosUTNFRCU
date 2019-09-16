unit matematica;

{$mode objfpc}{$H+}




interface
   function potencia(base:real; exponente:integer):real;
   function sumar(n1,n2:real):real;
   function resta(n1,n2:real):real;

implementation
  function potencia(base:real; exponente:integer):real;
    var
      i:integer;
      resultado:real;
    begin
      resultado:=1;
      for i:=1 to exponente do
      begin
          resultado:=resultado*base;
      end;
      potencia:=resultado;
    end;

  function sumar(n1,n2:real):real;
  begin
     sumar:=n1+n2;
  end;

function resta(n1,n2:real):real;
  begin
     resta:=n1-n2;
  end;
end.

