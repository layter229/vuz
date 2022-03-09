var a,b,c:integer;
const n=10;
type mas=array [1..n,1..n] of integer;
var m:mas;
procedure enter(var tabl:mas);
var i,j:integer;
  begin
    for i:=1 to n do
      for j:=1 to n do
        tabl[i,j]:=random(10);
        
  end;
procedure print
for i:=1 to n do
      for j:=1 to n do
          writeln();


begin
  randomize;
  enter(m);
  writeln(m);
end.