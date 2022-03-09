var
 f:file of integer;
 i,k,n,m,s,sn:integer;
begin
assign(f,'C:\Users\wardll\Desktop\Обучение\Программирование\Лабораторные работы Pascal\E.txt');
rewrite(f);
write('Введите количество чисел : ');
readln(n);
k:=0;

for i:=1 to n do
    write(f,random(10));
close(f);
reset(f);

while not eof (f) do
  begin
    read(f,m);
    write(m,' ');
  end;
  writeln;
  reset(f);

while not eof (f) do
  begin
    read(f,s);
    if s mod 2 = 0 then 
      k:=k+1
    else 
      sn:=sn+s;
  end;
writeln('Количество четных чисел в файле : ',k);
writeln('Сумма нечетных чисел в файле : ',sn);      
end.