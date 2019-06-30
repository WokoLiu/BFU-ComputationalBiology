#!/usr/bin/perl
# file: homework2_3_2.pl

print "输入一个整数，我给你整个正方形：";
chomp(my $side_len = <STDIN>);

# 输出第一行
print "*  " x $side_len, "\n";

# 输出中间行
for (my $i = 0; $i < $side_len - 2; $i++) {
    print "*  ", "   " x ($side_len - 2), "*\n";
}

# 输出最后一行
print "*  " x $side_len, "\n";
