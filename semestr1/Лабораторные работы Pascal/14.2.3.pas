type
  plist = ^tlist; // ^ - указатель на тип. tlist - обычный контейнер для всего(список)
  tlist = record // "поля"
    data: real;
    next: plist;
  end;

var
  x,x1,x2, list1, list2, head1, head2: plist;
  i,n: integer;

begin
  write('введите количество элементов в первом списке : ');
  readln(n);
  new(head1); // задаем head первого списка новое значение
  read(head1^.data);
  head1^.next := nil;
  x1 := head1;
  for i := 1 to n - 1 do
  begin
    new(x1^.next); // -1 т.к в условном списке, где n = 5, будет 6 слотов; заполнение первого списка
    x1 := x1^.next;
    read(x1^.data); 
    x1^.next := nil; 
  end;
  
  writeln('первый список :');
  list1 := head1;
  while list1 <> nil do // вывод списка
  begin
    write(list1^.data,' ');
    list1 := list1^.next;
  end;
  writeln;
  
  write('введите кол-во элементов во втором списке : ');
  readln(n);
  new(head2); // задаем head второго списка новое значение
  read(head2^.data);
  head2^.next := nil;
  x2 := head2;
  for i := 1 to n - 1 do
  begin
    new(x2^.next);
    x2 := x2^.next;
    read(x2^.data); 
    x2^.next := nil; 
  end;
  
  writeln('первый список :');
  list1 := head1;
  while list1 <> nil do // вывод списка
  begin
    write(list1^.data,' ');
    list1 := list1^.next;
  end;
  writeln;
 
  writeln('второй список  :');
  list2 := head2;
  while list2 <> nil do
  begin
    write(list2^.data,' ');
    list2 := list2^.next;
  end;
  writeln;
  
  list1 := head1;
  while list1<>nil do
    begin
    list2:=head2;
    while list2<>nil do      
      begin
        if list1^.data = list2^.data then
          begin
            if list1=head1 then   // приписываем head к переменной чтобы не стереть список
              begin
               head1 := head1^.next;
               dispose(list1);             // присваеваем первый элемент списка и очищаем список
               list1:=head1;
              end;
            
            if list1^.next=nil then // если в конце
              begin
                x := head1;    // присваеваем первый элемент списка к перемменной x 
              while x^.next<>nil do // пока список не кончился, делаем.
                begin
                 list1:=x;
                 x := x^.next;
                end;
              list1^.next := nil; // выходим из цикла
              dispose(x);
              end;
            
            if not(list1^.next=nil) and not(list1=head1) then // если в середине
              begin
                x:=head1;
                while x^.data<>list2^.data do
                  begin
                    list1:=x;
                    x:= x^.next;
                  end;
                list1^.next := x^.next; // выходим из цикла
                dispose(x);
             end;
          end;
          list2:=list2^.next; // переход к следующему элементу чтобы проверить его
      end;
      list1:=list1^.next;   // переход к следующему элементу чтобы проверить его
    end; 

  writeln('измененный список :');  // вывод измененного списка
  list1 := head1;
  while list1 <> nil do
  begin
    write(list1^.data,' ');
    list1 := list1^.next;
  end;
end.
