#include <iostream>
#include <math.h>
#include <stdio.h>
#include <conio.h>
#include <cmath>
using namespace std;

int a,b,c,m,n,z,s;

int main()
{   
    cout<<"Vvedite chisla a, b cherez probel"<<endl;
    cin>>m>>n;
    for (int i=m;i<n;i+=2){
    s=s+(i*i);
    }
    cout<<s<<""<<endl<<"Dlya zaversheniya najmite <ENTER>";
    getch();
}
