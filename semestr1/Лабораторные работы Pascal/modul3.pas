unit modul3;
interface
  function srgeo(x,y:real):real;  {названия функций}
  function srarif(x,y:real):real;
implementation                  {описание функций}
  function srarif:real;
   begin
    srarif:=(x+y)/2;
   end;
  function srgeo:real;
   begin
     srgeo:=sqrt(x*y);
   end;
   end.