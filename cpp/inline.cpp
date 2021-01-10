#include <stdio.h>
#include <iostream>

using namespace std;

// header
class A
{
public:
  void Foo(int x, int y);
};

// implement
inline void A::Foo(int x, int y) {
  cout << "inline func" << endl;
}

inline const char *num_check(int v)
{
  return (v % 2 > 0) ? "奇" : "偶";
}

int main(void)
{
  int i;

  for (i = 0; i < 100; i++)
    // 使用 inline 修饰带来的好处我们表面看不出来，其实，在内部的工作就是在每个 for 循环的内部任何调用 dbtest(i) 的地方都换成了 (i%2>0)?"奇":"偶"，这样就避免了频繁调用函数对栈内存重复开辟所带来的消耗
    printf("%02d %s\n", i, num_check(i));

  A *a = new A;
  a->Foo(1, 2);

  return 0;
}

