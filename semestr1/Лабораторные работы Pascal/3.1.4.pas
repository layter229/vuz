Program p_4;
Var a,b,c,x, mini: real;
Begin
  Writeln('Введите x');
  Readln(x);
  a:=sin(x);
  Writeln(a);
  b:=cos(x);
  Writeln(b);
  c:=ln(x);
  Writeln(c);
  if (a<b) and (a<c) then mini:=a;
  if (b<a) and (b<c) then mini:=b; 
  if (c<a) and (c<a) then mini:=c;
  writeln('Минимальное ',mini);
end.