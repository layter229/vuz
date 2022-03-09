uses modul3;
var m,n:real;
begin
  write('Введите два числа : ');
  read(m,n);
  writeln('Среднее арифметическое двух чисел равно : ',srarif(m,n):0:2);
  writeln('Среднее геометрическое двух чисел равно : ',srgeo(m,n):0:2);
end.