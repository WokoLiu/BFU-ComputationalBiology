#!/usr/bin/perl
# file: homework2_3_1.pl

print "请输入第一个数字：";
chomp(my $x = <STDIN>);

print "请输入第二个数字：";
chomp(my $y = <STDIN>);

print "和: ", $x + $y, "\n";
print "差: ", $x - $y, "\n";
print "积: ", $x * $y, "\n";
print "商: ", $x / $y, "\n";
