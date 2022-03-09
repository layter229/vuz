program lab8p1ex13;
var a: array[1..100,1..100] of integer;
    i,j,n,k,ps: integer;
    
begin
  writeln('Введите какого порядка матрица ');
  readln(n);
  for i:=1 to n do 
    for j:=1 to n do 
      begin
        Write('a[',i,' ',j,'] = ');
        Readln(a[i,j]);
      end;
      
    for i:=1 to n do            {вывод матрицы}
      begin
        for j:=1 to n do
          write(a[i,j]:2,' ');
          writeln;
      end;
     
    for i:=1 to n do
      ps:=ps+a[1,i];
      
    for i:=1 to n do 
     begin             {проверка на строки}
      for j:=1 to n do
        k:=k+a[i,j];
        if ps<>k then 
          begin
            writeln('Не является магическим квадратом');
            exit;
          end;
        k:=0;
       end;
      k:=0;
     
     for j:=1 to n do 
      begin            {проверка на столбцы}
      for i:=1 to n do k:=k+a[i,j];
        if ps<>k then 
          begin
            writeln('Не является магическим квадратом');
            exit;
          end;
     k:=0;
      end;
     writeln('Матрица является магическим квадратом');
end.