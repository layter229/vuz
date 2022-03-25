#include <iostream>
#include <math.h>
#include <stdio.h>
#include <conio.h>
#include <cmath>
using namespace std;

int a,b,c,m,n,z,s;

int main()
{   
    cout<<"Vvedite diapozon ot m do n cherez probel"<<endl;
    cin>>m>>n;
    
    if (m<n)
        for (int i=m;i<=n;i+=1){
            s+=i;
        }
    
    cout<<s<<endl<<"Dlya zaversheniya najmite <ENTER>";
    
    getch();
}
