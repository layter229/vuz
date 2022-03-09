var a,b,c,x,y:real;
begin
  writeln('Введите 3 числа x, y и z через пробел');
  readln(a,b,c);
  if (a>b) and (b>c) then 
    begin
    a:=a*2;
    b:=b*2;
    c:=c*2;
    end
   else 
    begin
    a:=a*(-1);
    b:=b*(-1);
    c:=c*(-1);
    end;
    writeln('Вывод чисел ', a,' ',b,' ',c);
end.