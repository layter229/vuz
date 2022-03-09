const n = 20;

var x:byte;

var m:array[1..n] of integer;
var k:byte;

procedure fill;
  begin 
    //randomize; random(90)
    for var k:= 2 to n do 
      m[k]:=m[k-1] + 1;
  end;

procedure m_print;
  begin
    for var k:= 1 to n do 
      write(m[k],' ');
    writeln;
  end;

begin
  fill;
  m_print;
  for k:=1 to n do
    if m[k] mod 4 <> 0 then 
      write(m[k],' ');
end.