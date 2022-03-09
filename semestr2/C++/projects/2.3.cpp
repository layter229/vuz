#include <iostream>
#include <math.h>
#include <conio.h>
#include <stdio.h>
using namespace std;

int a,b,c,x,y,z;

int main()
{   
    cout << "Vvedite chisla a, b, c cherez probel"<<endl;
    cin >>a>>b>>c;
    if ((a>b) && (b>c) ) {
        a=a*3;
        b=b*3;
        c=c*3;
    }
    else {
        a=abs(a);
        b=abs(b);
        c=abs(c);
    }
    cout <<""<<a<<" "<<b<<" "<<c<<endl<<"Dlya zaversheniya najmite <ENTER>";
    getch();
}
