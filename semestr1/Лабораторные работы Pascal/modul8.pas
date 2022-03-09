unit modul8;
interface
  procedure gip(m,n:real);
  procedure pl(m,n:real);
implementation
 procedure gip(m,n:real);
 var c:real;
  begin
    c:=sqrt((sqr(m)+sqr(n)));
    writeln('Гипотинуза равна : ',c);
  end;
 procedure pl(m,n:real);
   var k,p,c:real;
   begin
     c:=sqrt((sqr(m)+sqr(n)));
     p:=(m+n+c)/2;
     k := sqrt(p*(p-m)*(p-n)*(p-c));
     writeln('Площадь треугольника равна : ',k);
   end;
   end.