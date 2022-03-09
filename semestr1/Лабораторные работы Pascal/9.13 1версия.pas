type setq=set of integer;
var a:setq;
s,st:string;
l,i,kg,ks:byte;

begin
  kg:=0;
  ks:=0;
  writeln('Введите строку на русском языке');
  readln(s);             
  for i:=1 to length(s) do
    begin
    if s[i] in ['а', 'у', 'о', 'ы', 'и', 'э', 'я', 'ю', 'ё', 'е'] then
      st+=s[i]
    end;
  writeln(st);
end.
