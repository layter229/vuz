type  bibli = record
        fam:string;
        name:string;
        year:integer;
     end;
var
  books:array[1..100] of bibli;
  n,i:integer;
  s:string;
  flag:boolean;
begin
  flag:=false;
  write('Введите количество книг : ');
  readln(n);
  for i:=1 to n do
    begin
      writeln('Введите фамилию автора книги № ',i);
      readln(books[i].fam);
      writeln('Введите название книги №',i);
      readln(books[i].name);
      writeln('Введите год издания книги №',i);
      readln(books[i].year);
    end;
  
  writeln('Введите фамилию автора для поиска его книг выпущенных с 1960');
  readln(s);
  
  writeln('№ ':4,'|','Фамилия':20,'|','Год издания':20,'|','Название':20);
  
  for i:= 1 to n do
     if (s=books[i].fam) and (books[i].year>=1960) then 
       writeln(i:4,'|',books[i].fam:20,'|',books[i].year:20,'|',books[i].name:20);
  
  writeln('Книги с названием "Информатика" : ');
  writeln('№':4,'|','Фамилия':20,'|','Год издания':20,'|','Название':20);
  
  for i:= 1 to n do 
    begin
    if books[i].name='Информатика' then 
      writeln(i:4,'|',books[i].fam:20,'|',books[i].year:20,'|',books[i].name:20);
      flag:=true;
    end;
  
  if flag=false then
    writeln('В базе таких книг найдено не было');
end.