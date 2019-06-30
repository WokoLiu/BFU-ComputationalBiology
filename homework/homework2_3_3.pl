#!/usr/bin/perl
# file: homework2_3_3.pl

# 0-9的数组
my @numbers = (0 .. 9);

# 0-9的关联数组
my %number_map = (
    0, 'zero',
    1, 'one',
    2, 'two',
    3, 'three',
    4, 'four',
    5, 'five',
    6, 'six',
    7, 'seven',
    8, 'eight',
    9, 'nine',
);

print @numbers, "\n";
print keys(%number_map), "\n";
print values(%number_map), "\n";

# 删除5
delete($number_map{5});

while ((my $key, my $value) = each(%number_map)) {
    print "$key=$value\n";
}
