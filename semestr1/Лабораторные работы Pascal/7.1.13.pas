var 
a,n,k:integer;
s:string;
begin
writeln('Ââåäèòå ñòðîêó ñ äàííûìè â ñêîáêàõ ');
readln(s);
for n:=1 to length(s) do
  delete(s,pos('(',s),((pos(')',s)+1)-pos('(',s)));
writeln(s);  
end.
