#!/usr/bin/perl
# file: homework3_5.pl

# 每种密码子可能突变成这几种可能
my @a_mutation = qw/T G C/;
my @t_mutation = qw/A G C/;
my @g_mutation = qw/A T C/;
my @c_mutation = qw/A T G/;

# 原始数据
my $dna_str = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
my @dna = split("", $dna_str);

# 获取长度
my $dna_len = @dna;

# 循环十次
my $times = 10;

# 提前定义一些循环中要用到的
my $location; # 准备突变的位置
my $old;      # 突变前的内容
my $new;      # 突变后的内容
while ($times-- > 0) {
    # 选择突变位置
    $location = int(rand($dna_len));

    # 获取突变前的内容
    $old = $dna[$location];

    # 选择这个位置突变后的结果
    # 现在学的内容，还不支持更高级的写法
    if ($old == "A") {
        $new = $a_mutation[int(rand(3))];
    }
    elsif ($old == "T") {
        $new = $t_mutation[int(rand(3))];
    }
    elsif ($old == "G") {
        $new = $g_mutation[int(rand(3))];
    }
    else {
        $new = $c_mutation[int(rand(3))];
    }

    # 执行突变
    $dna[$location] = $new;
    print @dna, "\n";
}
