var a,b:real;
i:integer;
begin
  for i:=1 to 50 do
    begin
      a:=(1/(i*i*i));
      b+=a
    end;
  writeln(b);
end.