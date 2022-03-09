var
  a:array[1..10]of integer;
  b:array[1..100,1..100]of integer;
  i,j,n,c:integer;
 
begin
  randomize;
  write('Введите порядок матрицы: ');
  readln(n);
  for i:=1 to n do  {заполняем матрицу}
    for j:=1 to n do
      b[i,j]:=random(10);
    for i:=1 to n do
      begin
        for j:=1 to n do  {выводим её}
        write(b[i,j]:2,' ');
        writeln
      end;
  writeln;
  for i:=1 to 10 do {заполняем массив}
    a[i]:=random(10);
  for i:=1 to 10 do 
    write(a[i],' '); {выводим его}
  writeln;
  for i:=1 to n do 
    for j:=1 to n do
      begin
      if (j+i)mod 2 =0 then {если сумма индексов чётная, тогда...}
        begin
          for c:=1 to 10 do
            if b[i,j]=a[c] then b[i,j]:=0; {тогда зануляем те элементы, которые подходят по  условию и находятся в массиве}
        end;
      end;
      writeln;
  for i:=1 to n do {выводим итоговую матрицу}
      begin
        for j:=1 to n do
        write(b[i,j]:2,' ');
        writeln
      end;
end.