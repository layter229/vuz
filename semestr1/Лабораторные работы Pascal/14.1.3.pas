type 
  plist = ^tlist; // tlist - контейнер для всего(список)
  tlist = record  // ячейки
     data : real;
     next : plist;
  end;
var
   x,list,head : plist;
   i,n:integer;
   k:real;
begin
    write('введите количество элементов в списке : ');
    readln(n);
    new(head); 
    read(head^.data);
    head^.next:=nil;
    x:=head;
    for i:=1 to n-1 do // n-1 = 5, будет 6 слотов
      begin
        new(x^.next);
        x := x^.next;
        read(x^.data); 
        x^.next := nil; 
      end;
      list:=head;
    while list <> nil do // вывод списка
    begin
     write(list^.data,' ');
     list := list^.next; 
    end;
  writeln;

 x:=head;
    while x <> nil do  // ^ - указатель на значение(без него - адрес)
      begin
        k:=k+x^.data; // data - текущее значение
        x:= x^.next; // next - следующее значение
      end;
     writeln('среднее арифмитическое равно : ',k/n:0:2);         

end.
