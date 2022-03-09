var 
a, n, k, maxa:integer;
s:string;

begin
writeln('Ââåäèòå ñòðîêó, ñîäåðæàùóþ áóêâû "à"');
readln(s);
maxa:=0;
for n:=1 to length(s) do
  if s[n] = 'a' then
     begin
      k+=1;
      if k > maxa then
        maxa:=k
     end
  else
     k:=0;
writeln('Ìàêñèìàëüíîå êîë-âî áóêâ "à" = ',maxa);
end.
