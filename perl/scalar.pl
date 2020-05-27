#!/usr/local/bin/perl

$age = 20;
$name = "Runoob";
$salary = 130.50;

print("Age = $age\n");
print("Name = $name\n");
print("Salary = $salary\n");

$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;

$octal = 0377;
$hexa = 0xff;

print("integer = $integer \n");
print("negative = $negative \n");
print("floating = $floating \n");
print("bigfloat = $bigfloat \n");
print("octal = $octal \n");
print("hexa = $hexa \n");

$var = "字符串标量";
$quote = '单引号 - $var';
$double = "双引号 - $var";

$escape = "转义字符 - \t Hello, World!";

print("var = $var \n");
print("quote = $quote \n");
print("double = $double \n");
print("escape = $escape \n");

$str = "hello" . "world";
$num = 5 + 10;
$mul = 4 * 5;
$mix = $str . $num;

print("str = $str\n");
print("num = $num\n");
print("mix = $mix\n");

$string = '
多行字符串
    ———— 多行字符串
';

print("$string\n");

print <<EOF;
多行字符串
    ———— 多行字符串
EOF


print("Filename: " . __FILE__ . "\n");
print("Line: " . __LINE__ . "\n");
print("Package Name: " . __PACKAGE__ . "\n");

print("__FILE__ __LINE__ __PACKAGE__\n");

$smile = v9786;
$foo = v102.111.111;
$martin = v77.97.114.116.105.110;

print("smile = $smile \n");
print("foo = $foo \n");
print("martin = $martin \n");

