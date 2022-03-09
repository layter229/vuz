program p_1;
var maxi, mini, x, y: real;
begin
  writeln('Введите два числа x и y через пробел');
  readln(x,y);
  if x>y then 
  begin
    maxi:=x;
    mini:=y;  
  end
  else
    begin 
      mini:=x;
      maxi:=y;
    end;
  writeln('Максимальное ',maxi:0:1,'  ','Минимальное ',mini:0:1);
end.