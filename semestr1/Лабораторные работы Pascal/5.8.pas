procedure name;
begin
  writeln('********* ***************** ************* ****');
  writeln('                                              ');
  writeln('*                  Программа                 *');
  writeln('                                              ');
  writeln('*                    5.8                   *');
  writeln('                                              ');
  writeln('*       Автор: Епифанов Денис Евгеньевич     *');
  writeln('                                              ');
  writeln('********* ***************** ************* ****');
end;

function min(x,y:real):real;
begin
  if x<y then 
    min:=x
  else 
    min:=y;
end;

var s,a,b,c:real;

begin
  name;
  writeln('Введите a,b и c');
  readln(a,b,c);
  s:=(min(c,a-b)-min(b,a+(2*c)))/(100-min(a+c,2*b));  
  writeln(s);
end.