#include <iostream>
#include <math.h>
#include <conio.h>

using namespace std;

int c,a,r,b;

int main()
{   
    cout << "Vvedite chislo a i b cherez probel"<<endl;
    cin >>c>>a;
    b=sqrt((c*c)-(a*a));
    r=(a+b-c)/2;
    cout <<"Katet raven "<<b<<endl<<"Radius vpisannoy okrujnosti raven "<<r<<endl<<"Dlya zaversheniya najmite <ENTER>";
    getch();
}
