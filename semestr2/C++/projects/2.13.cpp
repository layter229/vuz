#include <iostream>
#include <math.h>
#include <stdio.h>
#include <conio.h>
using namespace std;

int a,b,c,x,y,z;

int main()
{   
    cout << "Vvedite chisla a, b cherez probel"<<endl;
    cin >>a>>b;
    if ((abs(a)>abs(b)) ) {
        a=a/5;
        cout<<a<<endl<<b<<endl;
    }
    else {
         cout<<a<<endl<<b<<endl;
    }
    cout <<""<<endl<<"Dlya zaversheniya najmite <ENTER>";
    //getch();
}
