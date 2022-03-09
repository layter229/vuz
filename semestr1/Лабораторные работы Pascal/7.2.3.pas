var s,sl: string;
    i,k: integer;
begin
readln(s);
s:=s+' ';
sl:='';
for i:=1 to length(s) do
  if s[i]<>' ' then 
    sl+=s[i]
  else
    begin
      if sl[1]=sl[length(sl)] then
        k+=1;
        sl:='';
    end;
writeln('Количество слов, начинающихся и заканчивающихся одной буквой = ',k);
end.