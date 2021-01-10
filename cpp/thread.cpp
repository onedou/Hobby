#include <iostream>
#include <thread>
#include <chrono>

using namespace std;

void th_function()
{
  cout << "Hello Thread!" << endl;
}

void thr_function1()
{
  for (int i = 0; i != 10; i++)
  {
    cout << "thread 1 print: " << i << endl;
  }
}

void thr_function2(int n)
{
  cout << "thread 2 print: " << n << endl;
}

void pause_thread(int n)
{
  this_thread::sleep_for(chrono::seconds(n)); // C++11 this_thread class
  cout << "Pause of " << n << " seconds ended\n";
}

void fun1(int n)
{
  cout << "Thread " << n << " executing" << endl;
  n += 10;
  this_thread::sleep_for(chrono::milliseconds(10));
}

void fun2(int &n)
{
  cout << "Thread " << n << " executing" << endl;
  n += 20;
  this_thread::sleep_for(chrono::milliseconds(10));
}

void show()
{
  cout << "Hello c plus plus!" << endl;
}

void show1(const char *str, const int id)
{
  cout << "thread " << id + 1 << " : " << str << endl;
}

int main(int argc, char *argv[])
{
  thread t(th_function);
  t.join();

  thread t1(thr_function1);
  thread t2(thr_function2, 10);

  cout << "main, t1 and t2 now execute concurrently..." << endl;

  t1.join();
  t2.join();

  cout << "thread 1 and thread 2 completed." << endl;

  thread threads[5]; // default-constructed threads

  cout << "Spawning 5 threads..." << endl;
  
  for (int i = 0; i < 5; ++i)
  {
    threads[i] = thread(pause_thread, i + 1); // move-assign threads
  }

  cout << "Done spawning threads. Now waiting for them to join: " << endl;

  for (int i = 0; i < 5; ++i)
  {
    threads[i].join();
  }

  cout << "All threads joined!" << endl;

  int n = 0;
  thread tt1; // tt1不是一个thread
  thread tt2(fun1, n + 1); // 按照值传递
  tt2.join();

  cout << "n=" << n << endl;

  n = 10;
  thread tt3(fun2, ref(n)); // 引用
  thread tt4(move(tt3)); // tt4执行tt3，tt3不是thread
  tt4.join();

  cout << "n=" << n << endl;

  // asynchronous
  //thread o1(show); // 根据函数初始化
  //thread o2(show);
  //thread o3(show);
  //cout << "-----------------" << endl;
  //thread th[3]{thread(show), thread(show), thread(show)};
  //cout << "-----------------" << endl;
  //thread *pt1(new thread(show));
  //thread *pt2(new thread(show));
  //thread *pt3(new thread(show));
  //cout << "-----------------" << endl;
  //thread *pth(new thread[3]{thread(show), thread(show), thread(show)});
  //cout << "-----------------" << endl;
  
  thread a1(show1, "a1 thread!", 0);
  thread a2(show1, "a2 thread!", 1);
  thread a3(show1, "a3 thread!", 2);

  return 0;
}

