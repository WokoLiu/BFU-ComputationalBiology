#!/usr/bin/perl
# file: homework5_1.pl

print "请输入一句话(英文的): ";
chomp(my $sentence = <STDIN>);

# 按空格分隔成数组
my @array = split(" ", $sentence);

for (my $i = 0; $i < @array; $i++) {
    # 每个单词都要首字母大写
    $array[$i] = ucfirst($array[$i])
}

my $res = join(" ", @array);

print $res;
