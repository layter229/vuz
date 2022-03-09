var
 f,g:file of integer;
 i,k,n,m:integer;
 a: set of integer;

begin
assign(f,'C:\Users\wardll\Desktop\Обучение\Программирование\Лабораторные работы Pascal\F.txt');
rewrite(f);
assign(g,'C:\Users\wardll\Desktop\Обучение\Программирование\Лабораторные работы Pascal\G.txt');
rewrite(g);
write('Введите количество чисел : ');
readln(n);
for i:=1 to n do
  begin
    read(m);
    write(f,m);
  end;
  reset(f);
  writeln('Файл F : ');
  while not eof (f) do
  begin
    read(f,m);
    write(m,' ');
  end;
  reset(g);
  reset(f);
repeat
  read(f,k);
  if not (k in a) then
    begin
      a+=[k];
      write(g,k);
    end;
until 
  eof(f);
writeln;
close(g);
close(f);
writeln('Файл G : ');
reset(g);
while not eof (g) do
begin
  read(g,m);
  write(m,' ');
end;
  close(g);
end.