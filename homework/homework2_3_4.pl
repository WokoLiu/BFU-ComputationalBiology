#!/usr/bin/perl
# file: homework2_3_4.pl

print "请输入5个 1-30 之间的整数\n";
my $num;

for (my $i = 1; $i <= 5; $i++) {
    print "请输入第", $i, "个数字：";
    chomp($num = <STDIN>);
    print "*" x $num, "\n";
}
