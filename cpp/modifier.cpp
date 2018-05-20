#include <iostream>
using namespace std;

class Test1
{
public:
    Test1(int n)
    {
        num=n;
    }//普通构造函数
private:
    int num;
};

class Test2
{
public:
    explicit Test2(int n)
    {
        num=n;
    }//explicit(显式)构造函数
private:
    int num;
};

/* 
 * 这个程序演示了有符号整数和无符号整数之间的差别
*/
int main()
{
  short int i;           // 有符号短整数
  short unsigned int j;  // 无符号短整数

  j = 50000;

  i = j;
  cout << i << " " << j;


  Test1 t1 = 12;//隐式调用其构造函数,成功
  // Test2 t2 = 12;//编译错误,不能隐式调用其构造函数
  Test2 t2(12);//显式调用成功

  return 0;
}