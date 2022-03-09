type  bagaj = record
        ves:real;
        kv:integer;
     end;
var
  ppl:array[1..100] of bagaj;
  n,i:integer;
  srv,srk:real;
  flag:boolean;
begin
  write('Введите количество багажей : ');
  readln(n);
  for i:=1 to n do
    begin
      writeln('Введите количесто вещей в багаже №',i);
      readln(ppl[i].kv);
      writeln('Введите вес вещей в багаже №',i);
      readln(ppl[i].ves);
      srv:=srv+ppl[i].ves;
      srk:=srk+ppl[i].kv;
    end;
  srv:=srv/srk;
  srk:=srk/n;
  writeln('Средний вес одной вещи равен :',srv:0:2);
  //writeln('Подходящие по условию багажи:');
  writeln('№ ':4,'|','Количество вещей  ':20,'|','Вес вещей   ':20,'|','Cредний вес одной вещи':20);
  for i:=1 to n do begin
    if abs(ppl[i].ves/ppl[i].kv-srv)<=0.3 then 
      begin
        writeln(i:5,'|',ppl[i].kv:20,'|',ppl[i].ves:20,'|',(abs(ppl[i].ves/ppl[i].kv):0:2):20);
        flag:=true;
      end;
    end;
  if flag=false then 
    writeln('Багаж подходящий по условию не был найден');
end.
    
    