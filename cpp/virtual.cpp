#include <iostream>

using namespace std;

class base
{
  int a, b;
public:
  virtual void test() { cout << "base func" << endl; }
  virtual ~base() {} // 析构函数必须是虚拟函数
};

class inheriter: public base
{
public:
  void test() { cout << "inheriter func" << endl; }
};

int main()
{
  cout << "Hello World!" << endl;
  
  base *p1 = new base;
  base *p2 = new inheriter;
  inheriter *p3 = new inheriter();

  p1->test();
  p2->test();
  (*p3).test();

  return 0;
}

