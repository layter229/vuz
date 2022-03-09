#include <iostream>
#include <math.h>
#include <conio.h>

using namespace std;

int a,b;

int main()
{   
    cout << "Vvedite katet a i b cherez probel"<<endl;
    cin>>a>>b;
    int c=sqrt((a*a)+(b*b));
    cout <<"Gipotenuza ravna "<<c<<endl<<"Dlya zaversheniya najmite <ENTER>";
    getch();
}