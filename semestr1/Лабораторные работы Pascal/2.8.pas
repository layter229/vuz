program p_8;
var l, x1,x2,y1,y2:real;
begin
    writeln('Введите начальные точки x1 и y1');
    readln(x1,y1);
    writeln('Введите конечные точки x2 и y2');
    readln(x2,y2);
    l:= sqrt((sqr(x2-x1))+(sqr(y2-y1)));
	  writeln('Расстояние равно ',l);
end.