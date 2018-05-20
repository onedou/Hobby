#include <iostream>
using namespace std;
 
const int LENGTH = 10;   
#define WIDTH  5
#define NEWLINE '\n'

int main()
{
 
   int area;  
   const int A = 6;
   #define B 10.3
   
   area = LENGTH * WIDTH;
   cout << area;
   cout << NEWLINE;
   cout << A << endl;
   cout << B << endl;
   cout << endl;
   system("pause");
   return 0;
}