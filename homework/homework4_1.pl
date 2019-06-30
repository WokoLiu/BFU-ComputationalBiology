#!/usr/bin/perl
# file: exercise4_1.pl

print "请输入一组数字，并以空格为区分：";
chomp(my $raw = <STDIN>);
my @numbers = split(" ", $raw);

my $average = get_average(@numbers);
print "平均值：", $average, "\n";

my $median = get_median(@numbers);
print "中位数：", $median, "\n";

my $ssd = get_simple_standard_deviation(@numbers);
print "样本标准差：", $ssd, "\n";

# 求平均值
sub get_average {
    my (@nums) = @_;
    my $len = @nums;
    my $sum = 0;

    # 求和
    for (@nums) {
        $sum += $_;
    }
    return $sum / $len;
}

# 求中位数
sub get_median {
    my (@nums) = @_;
    my $len = @nums;
    my $half = $len / 2;

    if ($len % 2) {
        # 如果是奇数
        return $nums[int($half)];
    }
    else {
        # 如果是偶数
        return ($nums[$half - 1] + $nums[$half]) / 2;
    }
}

# 求样本标准差
sub get_simple_standard_deviation {
    my (@nums) = @_;
    my $len = @nums;
    my $ave = get_average(@nums);
    my $sum = 0; # $sum 用来存每个值与均值的差的平方和

    for (@nums) {
        $sum += ($ave - $_) ** 2;
    }

    return sqrt($sum / ($len - 1));
}
