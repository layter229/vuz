type setq=set of char;

var 
    a:setq;
    s:string;
    l,i,kg,ks:integer;
begin
  kg:=0;
  ks:=0;
  writeln('Введите строку на английском языке');
  readln(s);
  
  for i:=1 to length(s) do
    if s[i] in ['.'] then
      begin
          if kg > ks then
            writeln('Гласных букв больше')
          else
            writeln('Согласных букв больше');
          exit
      end
    else
      begin
        if s[i] in ['a','e','i','o','u','A','E','I','O','U'] then    
          kg+=1
        else
          ks+=1;
      end;
end.
