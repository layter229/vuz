var a,b,c:real;
begin
  writeln('Введите 3 числа a, b и c через пробел');
  readln(a,b,c);
  if (a>b) and (b>c) then 
    begin
    a:=a*3;
    b:=b*3;
    c:=c*3;
    end
   else 
    begin
    a:=abs(a);
    b:=abs(b);
    c:=abs(c);
    end;
    writeln('Вывод чисел ', a,' ',b,' ',c);
end.