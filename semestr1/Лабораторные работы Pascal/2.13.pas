program p_13;
var a,v,s:real;
begin
    writeln('Введите сторону куба');
    readln(a);
    v:=a*a*a;
    s:=6*sqr(a);
    writeln('Обьём куба равен ',v,', а площадь поверхности равна ', s);
end.