type a ='a'..'я';

var
  s,p:string;
  i,n:integer;
  g,k:set of a;

begin
  p:='аеёиоуыэюя';
  writeln('Введите строку на русском языке');
  readln(s);
  i:= length(s);
  for i:=1 to length(s) do
    begin
      if s[i] in ['а','е','ё','и','о','у','ы','э','ю','я'] then 
        k:=k+[s[i]];
    end;
  
  for i:=1 to length(p) do
    if p[i] in k then 
      writeln(p[i]);
end.