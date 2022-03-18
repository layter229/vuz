#include <iostream>
#include <math.h>
#include <stdio.h>
#include <conio.h>
#include <cmath>
using namespace std;

int a,b,c,m,n,z,s;

int main()
{   
    cout<<"Vvedite diapozon ot m do n cherez probel"<<endl<<"Rekomenduemie znacheniya: 0, 90, 120, 180"<<endl;
    cin>>m>>n;
    cout<<"Vvedite shag intervala"<<endl<<"Rekomenduemie znacheniya: 15, 30"<<endl;
    cin>>z;
    
    cout.precision(4);
    
    for (int i=m;i<=n;i+=z){
    cout<<cos(i*(3.14/180))<<endl;
    }
    
    cout<<"Dlya zaversheniya najmite <ENTER>";
    
    getch();
}
