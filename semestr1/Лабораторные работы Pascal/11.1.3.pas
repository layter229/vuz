var
 f:file of char;
 m,k:char;
begin
  assign(f,'C:\Users\wardll\Desktop\Обучение\Программирование\Лабораторные работы Pascal\A.txt');
  reset(f);
  while not eof(f) do
    begin
      read(f,m);
      write(m,' ');
    end;
  writeln;
  reset(f);
  seek(f,0);
  read(f,k);
  seek(f,1);
  read(f,m);
  if (k in ['0'..'9']) and (m in ['0'..'9']) then 
    begin
      if m in['0','2','4','6','8'] then 
        writeln('Число, образованное первыми двумя символами четное')
      else 
        writeln('Число, образованное первыми двумя символами нечетное')
    end
  else 
    writeln('Первые два компонента не являются цифрами');
  close(f);
end.