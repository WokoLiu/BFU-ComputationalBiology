#!/usr/bin/perl
# file: homework2_2.pl

# 2.1
print "请输入整数变量 x 的值：";
$x = <STDIN>, chop($x);

# 2.2
print "请输入整数变量 y 的值：";
$y = <STDIN>, chop($y);

# 2.3
$z = $x++ + $y;

# 2.4
if ($count > 10) {print "Count is greater than 10";}

# 2.5
print "这\t是\t一\t个\tPerl\t程\t序\t.\n";

# 2.6
@numbers = (1 .. 100);

# 2.7
for ($i = 0; $i < 100; $i++) {print $numbers[$i]}
