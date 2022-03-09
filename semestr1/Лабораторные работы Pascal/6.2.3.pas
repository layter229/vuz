const n = 10;

var m:array[1..n] of integer;
k:byte;
z:boolean;

procedure fill;
  begin 
   for var k:=1 to n do
      Readln (m[k]); //randomize; 
    //for var k:= 2 to n do 
      //m[k]:= random(10); //m[k-1] + 1
  end;

procedure mp;
  begin
    for var k:= 1 to n do 
      write('│',m[k],'│ ');
    writeln;
  end;

begin
  fill;
  mp;
  
  for k:=1 to n-1 do
    if (m[k] = 0) and (m[k+1] = 0) then 
      begin
        z:=true;
        break
      end   
    else
      z:=false;
  
  if z = True then
    writeln('Есть два идущих подряд нуля')
  else
    writeln('Нет двух идущих подряд нулей');

end.