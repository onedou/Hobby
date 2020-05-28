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

@var_10 = (1..10);
@var_20 = (1..20);
@var_abc = (a..z);

print("@var_10\n");
print("@var_20\n");
print("@var_abc\n");

@array = (1, 2, 3);
$array[50] = 4;

$size = @array;
$max_index = $#array;

print("数组大小：$size\n");
print("最大索引：$max_index \n");

@sites = ("google", "big", "taobao");
$new_size = @sites;

print("1. \@size = @sites\n" . "原数组长度：$new_size\n");

# 在数组结尾添加一个元素
$new_size = push(@sites, "baidu");
print("2. \@sites = @sites\n" . "新数组长度：$new_size\n");

# 在数组开头添加一个元素
$new_size = unshift(@sites, "weibo");
print("3. \@sites = @sites\n" . "新数组长度：$new_size\n");

# 删除数组末尾的元素
$new_byte = pop(@sites);
print("4. \@sites = @sites\n" . "弹出元素为： $new_byte\n");

# 移除数组开头的元素
$new_byte = shift(@sites);
print("5. \@sites = @sites\n" . "弹出元素为：$new_byte\n");

###############################################################

@sites = qw/google taobao big weibo qq facebook 网易/;
@sites2 = @sites[3, 4, 5];
print("@sites2 \n");


@nums = (1..20);
print("替换前 — @nums\n");

splice(@nums, 5, 5, 21..25);
print("替换后 — @nums\n");


$var_test = "bigguy";
$var_string = "www-big-com";
$var_names = "google,taobao,big,weibo";

@test = split('', $var_test);
@string = split('-', $var_string);
@names = split(',', $var_names);

print("$test[3]\n");
print("$string[2]\n");
print("$names[3]\n");

$var_string = "www-big-com";
$var_names = "google,taobao,big,weibo";

@string = split('-', $var_string);
@names = split(',', $var_names);

$string1 = join('-', @string);
$string2 = join(',', @names);

print("-----------------\n");
print("$string1\n");
print("$string2\n");


@sites = qw(google taobao big facebook);
print("排序前：@sites\n");

@sites = sort(@sites);
print("排序后：@sites\n");



@numbers = (1,3,(4,5,6));
print("numbers = @numbers\n");



@odd = (1, 3, 5);
@even = (2, 4, 6);

@numbers = (@odd, @even);
print("numbers = @numbers\n");


$var = (5,4,3,2,1)[4];
print("var 的值为 = $var\n");


@list = (5, 4, 3, 2, 1)[1..3];
print("list 的值 = @list\n");