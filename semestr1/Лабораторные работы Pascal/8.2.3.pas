type mas = array[1..100,1..100] of integer;
var
  a,b,ab,ba: mas;
    i,j,n,m,k: integer;

procedure enter (var tb: mas; m: integer);
  var i, j: integer;
  begin
   for i:= 1 to m do
     for j:= 1 to m do
        tb[i,j]:=random(3)+1;
  end;

procedure list(var tb:mas; m: integer);
   var  i, j: integer;
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
  writeln('Введите какого порядка матрицы  ');
  readln(n);
  enter(a,n);
  writeln('Матрица A :');
  list(a,n);
  enter(b,n);
  writeln('Матрица B :');
  list(b,n);
  
  for i:=1 to n do
   for j:=1 to n do
    begin
	   ab[i,j]:=0;
	   for k:=1 to n do
	    ab[i,j]:=ab[i,j]+a[i,k]*b[k,j];
    end;
  writeln('Матрица AB :');
  list(ab,n);
  
  for i:=1 to n do
   for j:=1 to n do
    begin
	   ba[i,j]:=0;
	   for k:=1 to n do
	    ba[i,j]:=ba[i,j]+b[i,k]*a[k,j];
    end;
  writeln('Матрица BA :');
  list(ba,n);
  
  for i:= 1 to n do
     for j:= 1 to n do 
      a[i,j]:=ab[i,j]-ba[i,j];
  writeln('Матрица AB - BA = ');
  list(a,n);
end.
