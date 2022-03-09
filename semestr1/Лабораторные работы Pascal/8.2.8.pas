type mas = array[1..100,1..100] of integer;

var
  a,a2: mas;
  i,k,j,n:integer;
  b:array[1..100]of integer;
  c:array[1..100]of integer;

procedure print(var tb:mas; m: integer);
  var  i,j: integer;
    begin
      for i:=1 to m do
        begin
          for j:=1 to m do
          write (tb[i,j]:4);
          writeln;
        end;
    writeln;
    end;

begin
  randomize;
  write('Введите порядок матрицы: ');
  readln(n);
  
  for i:=1 to n do         {заполнение и вывод матрицы А}
    for j:=1 to n do
      a[i,j]:=random(3)+1; 
  writeln('Матрица A :');
  print(a,n);
  
  for i:=1 to n do         {заполнение и вывод вектора b}
    b[i]:=random(3)+1;
  writeln('Вектор b : ');    
  for i:=1 to n do 
    write(b[i],' ');
  writeln;
  
  for i:=1 to n do
    for j:=1 to n do
      Begin
        a2[i,j]:=0;        {зануляем}
	      for k:=1 to n do
	        a2[i,j]:=a2[i,j]+a[i,k]*a[k,j]; {квадраты элементов матриц приписываем в элементы итоговой матрицы}
      End;
  writeln('Результат квадрата  матрицы A');
  print(a2,n);
  
  for i:=1 to n do
    for j:=1 to n do
      c[i]:=c[i]+a2[i,j]*b[j]; {элементы итоговой матрицы перемножаем с вектором b и приписываем элементам массива с}
  writeln('Вектор (A^2)b : ');
  for i:=1 to n do      {выводим}
    write(c[i],' ');
end.