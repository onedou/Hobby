#!/usr/local/bin/perl

$age = 25;
$name = "big";
$salary = 1445.50;

print("Age = $age\n");
print("Name = $name\n");
print("Salary = $salary\n");

@ages = (25, 30, 40);
@names = ("google", "runoob", "taobao");

print("\$ages[0] = $ages[0]\n");
print("\$ages[1] = $ages[1]\n");
print("\$ages[2] = $ages[2]\n");
print("\$names[0] = $names[0]\n");
print("\$names[1] = $names[1]\n");
print("\$names[2] = $names[2]\n");

%data = ('google', 45, 'runoob', 30, 'taobao', 40);

print("\$data{'google'} = $data{'google'}\n");
print("\$data{'runoob'} = $data{'runoob'}\n");
print("\$data{'taobao'} = $data{'taobao'}\n");

@names = ('google', 'runnob', 'taobao');

@copy = @names;
$size = @names;

print("名字为：@copy\n");
print("名字数为：$size\n");