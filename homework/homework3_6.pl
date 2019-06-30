#!/usr/bin/perl
# file: homework3_6.pl

my $protein = "MSSDSEMAIFGEAAPFLRKSERERIEAQNKPFDAKTSVFVVDPKESFVKATVQSREGGKV";

print "请输入一个 motif 模式：";
chomp(my $motif = <STDIN>);

# 保证大写
$motif = uc($motif);

if ($protein =~ /$motif/) {
    print "I found it!\n"
}
else {
    print "I couldn't find it."
}
