const n = 20;

var m:array[1..n] of integer;
k:byte;

procedure fill;
  begin 
    randomize; 
    for var k:= 2 to n do 
      m[k]:= random(10); //m[k-1] + 1
  end;

procedure m_print;
  begin
    for var k:= 1 to n do 
      write(' │',m[k],'│');
    writeln;
  end;

begin
  fill;
  m_print;
  for k:=1 to n do
    if m[k]<2 then 
      m[k]:=0;
  writeln('---------------------------------------------------------------------------');
  m_print;
end.