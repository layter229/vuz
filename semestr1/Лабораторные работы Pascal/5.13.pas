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

var i,j,n : integer;

function fsqr(a : integer) : boolean;
begin
  if a-sqr(round(sqrt(a)))=0 then 
    fsqr:=true 
  else 
    fsqr:=false;
end; 
begin
  name;
  writeln('Введите число');
  readln(n);
  for i:=2 to n-1 do
    for j:=1 to i-1 do
      if fsqr(j) and fsqr(i-j) then
        writeln(round(sqrt(j)),'^2 + ',round(sqrt(i-j)),'^2 ',' = ',j,' + ',i-j,' = ',' = ',i);
end.
