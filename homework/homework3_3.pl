#!/usr/bin/perl
# file: homework3_3.pl

print "请输入一个五位数：";

# 输入数字
chomp(my $num = <STDIN>);

# 转成数组
my @num_array = split("", $num);

# $i 从 5 到 1 循环
for (my $i = 5; $i > 0; $i--) {
    print $num_array[$i - 1] x $i, "\n";
}
