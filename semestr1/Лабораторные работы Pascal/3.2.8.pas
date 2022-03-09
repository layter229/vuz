var a,b,c,x,y:real;
begin
  writeln('Введите 3 положительных числа через пробел(a - ширина,b - высота,c - длина)');
  readln(a,b,c); 
  writeln('Введите 2 положительных числа через пробел(x - ширина отверстия, y - высота отверстия)');
  readln(x,y);
  if (a<=x) and (b<=y) then writeln('Кирпич пройдёт')
  else  
  if (b<=x) and (a<=y) then  writeln('Кирпич пройдёт')  
  else 
  if (c<=x) and (b<=y) then writeln('Кирпич пройдёт') 
  else 
     writeln('Кирпич не пройдёт');
end.