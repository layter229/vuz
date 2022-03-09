#include <iostream>
#include <math.h>
#include <conio.h>

using namespace std;

int a,b,x,y,z;

int main()
{   
    cout << "Vvedite chislo a i b cherez probel"<<endl;
    cin >>a>>b;
    x=a+b;
    y=a-b;
    z=a*b;
    cout <<"Cymma ravna "<<x<<endl<<"Raznost' ravna "<<y<<endl<<"Prozvedenie ravno "<<z<<endl<<"Dlya zaversheniya najmite <ENTER>";
    getch();
}
