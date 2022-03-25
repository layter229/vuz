#include <iostream>
using namespace std;
int main()
{
  int a,b,c,d=2,n;
  cout<<"Vvedite chislo N dlya razlojeniya na protie mnojiteli"<<endl;
  cin>>n;
  while (n>1)
  {
    while ((n%d)==0)
    {
      cout<<d<<" ";
      n/=d:
    }
    if (d == 2) d++;
    else d+=2;
  }
}
