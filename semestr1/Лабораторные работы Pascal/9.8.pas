var
  i,m,n,y:integer;
  c:set of integer;
  z:set of integer;

begin
  writeln('Введите последовательность целых чисел');
  readln(n);
  while n<>0 do 
    begin
      i:= n mod 10;
      c:=c+[i];
      n:= n div 10;
    end;
  
  writeln('Введите заданный отрезок');
  readln(m);
  while m<>0 do 
    begin
      y:=m mod 10;
      z:=z+[y];
      m:= m div 10;
    end;
  
  if c=z then 
    writeln('Последовательность является перестановкой отрезка')
  else 
    writeln('Последовательность не является перестановкой отрезка'); 
end.