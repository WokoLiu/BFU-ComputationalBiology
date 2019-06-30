#!/usr/bin/perl
# file: homework2_3_5.pl

my @numbers = ();

print "请输入十个数字\n";
my $num;
for (my $i = 1; $i <= 10; $i++) {
    print "请输入第", $i, "个数字：";
    chomp($num = <STDIN>);
    push(@numbers, $num);
}

# 对边界进行开方，用作判断
my $min = 100 ** (1 / 2);
my $max = 200 ** (1 / 2);

foreach my $one (@numbers) {

    # 先平方再判定不太好，应该先判断再平方
    # my $square = $one ** 2;
    # if ($square >= 100 && $square <= 200) {
    #     print $square, "\n";
    # }

    # 先判断再平方
    if ($one >= $min && $one <= $max) {
        print $one ** 2, "\n";
    }
}
