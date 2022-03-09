var x,n,k,s,m:integer;
begin
  writeln('Введите значение интервала - m (начало) и n (конец)');
  readln(m,n);
  k:=0;
  for x:=m to n do
  begin
    if x mod 2 <> 0 then 
    begin 
      k:=sqr(x);
      s+=k;
    end;
  end;
  writeln('Сумма квадратов нечётных чисел в интервале от ', m,' до ',n,' равна ',s);
end.