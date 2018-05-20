#include <iostream>

using namespace std;

int g = 10;
int same = 20;

int main()
{
  int a, b;
  int c;
  int same = 5;

  a = 10;
  b = 20;
  c = a + b;

  cout << "Number is " << c << endl;
  cout << "Global number is " << g << endl;
  cout << "Same number is " << same << endl;
  system("pause");

  return 0;
}