program p_1;
var maxi, mini, x, y, z, a, b, a1, b1, c: real;
begin
  writeln('Введите три числа x, y и z через пробел');
  readln(x,y,z);
  c:=z/2;
  a:=x+y+z;
  b:=x*y*z;
  a1:=x+y+c;
  writeln(sqr(a1));
  if b>a then  
    maxi:=b
  else maxi:=a;
  writeln('Максимальное ',maxi:0:1);
  if b>a1 then
    mini:=a1
  else mini:=b;
  writeln('Минимальное ',(sqr(mini)+1):0:1);
end.