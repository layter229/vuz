program p_1;
var maxi, mini, x, y, z, a, b, a1, c, h: real;
begin
  writeln('Введите три числа x, y и z через пробел');
  readln(x,y,z);
  a:=(x+y+z);
  b:=(x*y*z);
  a1:=(x+y+(z/2));
  writeln(a1);
  writeln(b);
  if b>a then
    maxi:=b
  else maxi:=a;
  writeln('Максимальное ',maxi:0:2);
  if a1<b then
    mini:=a1
  else mini:=b;
  h:=sqr(mini);
  writeln(mini);
  writeln('Минимальное ',(sqr(mini)+1):0:2);
end.