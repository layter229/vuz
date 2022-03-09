Program p_3;
Var a,b,c,x: real;
Begin
    Writeln('Введите сторону a, b и угол x');
    Read(a,b,x);
    c:= sqrt(sqr(b)+sqr(a)-2*b*a*cos(x));
    Writeln ('Сторона c равна ',c:0:0);
End.