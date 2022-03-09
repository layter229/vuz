const n = 10;

var m:array[1..n] of integer;
k:byte;
s:integer;

procedure fill;
  begin
    for var k:= 1 to n do 
      m[k]:=random(10)+ 1;
  end;

procedure mp;
begin
  for var k:= 1 to n do
    write('│',m[k],' │ ');
  writeln;
end;

begin
  fill;
  mp;
  s:= 1;
  for k:=1 to n do
    if (k mod 2) <> 0 then
      s:=s*m[k];
  writeln(s);
end.