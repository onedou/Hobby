#!/usr/local/bin/perl

$a = 10;
$var = << "EOF";
Here document
example: a = $a
EOF

print("$var\n");

$var = << 'EOF';
Here document
exampler: a = $a
EOF

print("$var\n");

$result = "example \"runoob\"";
print("$result\n");
print("\$result\n");
