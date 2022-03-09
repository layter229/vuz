var a,b,k,s,x:integer;
begin
  k:=0;
  writeln('Введите число A и B');
  readln(a,b);
  if a<b then
    begin  
      for x:=a to b do
        begin
          k+=x
        end;
      writeln(k);
    end
  else writeln('Число A должно быть меньше B');
end.