var m,n,k,s,x:integer;
begin
writeln('Введите число m(количество последних цифр числа)');
readln(m);
writeln('Введите число n(число для которого будет находиться сумма m-последних цифр числа)');
readln(n);
for x:=m downto 1 do
  begin
    k:=n mod 10;
    writeln(k);
    s+=k;
    n:=n div 10;
  end;
writeln('Сумма ',m,' последних цифр равна ',s);
end.