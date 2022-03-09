var
  f: text;
  s,m, s1, s2: string;
  i: integer;
  
begin
  assign(f, 'C:\Users\wardll\Desktop\Обучение\Программирование\Лабораторные работы Pascal\D.txt');
  Rewrite(f);
  writeln('Введите текст в файл: ');
  readln(m);
  //write(m);
  write(f,m);
  close(f);
  reset(f);
  s1 := ''; 
  s2 := '';
  while not eof(f) do
    begin
      readln(f,s);
      for i:=1 to length(s) do
        if pos(s[i],s1)=0 then   {если не находит символ s[i] в строке s1}
          begin
            s1:=s1+s[i];
            s2:=s2+s[i];
          end
        else 
          delete(s2,pos(s[i],s2),1); {если находит, то удалить символ}
    end;
  close(f);
  writeln('Символы, встречающиеся 1 раз: ');
  write(s2);
end.