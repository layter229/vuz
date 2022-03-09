var s,sl: string;
    i,k,mini: integer;
begin
readln(s);
s:=s+' ';
sl:='';
mini:=length(s);
for i:=1 to length(s) do
  if s[i]<>' ' then 
    begin
    sl+=s[i];
    end 
  else
    if length(sl)<mini then
      begin
      writeln(sl);
      mini:=length(sl);
      sl:='';
      end;
writeln('Длина самого короткого слова равна ',mini);
end.