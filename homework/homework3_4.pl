#!/usr/bin/perl
# file: homework3_4.pl

# 处理原始数据
my $dna_str = "AAAAAAAA";
my @dna = split("", $dna_str);

# splice 的第四个参数必须是数组，因此使用 qw
# 也可以使用 splice(@dna, 3, 0, split("", "TTT"));
# 不过太长了

splice(@dna, 3, 0, qw/T T T/);
print @dna, "\n";

splice(@dna, 3, 3, qw/G G/);
print @dna, "\n";

splice(@dna, 3, 2);
print @dna, "\n";
