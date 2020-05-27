#!/usr/local/bin/perl

@hits = (25, 30 ,40);
@names = ('google', 'big', 'taobao');

print("\$hits[0] = $hits[0] \n");
print("\$hits[1] = $hits[1] \n");
print("\$hits[2] = $hits[2] \n");
print("\$names[0] = $names[0] \n");
print("\$names[1] = $names[1] \n");
print("\$names[2] = $names[2] \n");

@array1 = (1, 2, 'Hello');
@array2 = qw/这是 一个 数组/;
@days = qw/google
taobao
big
big/;

print(@array1);
print("\n");
print(@array2);
print("\n");
print(@days);
print("\n");

print($array1[0]);
print("\n");
print($array1[1]);

@sites = qw/google taobao big/;

print("$sites[0] \n");
print("$sites[1] \n");
print("$sites[2] \n");
print("$sites[-1] \n");