#!/usr/bin/perl
# file: homework3_1.pl

# 翻译对照表
my %rna_map = (
    'a' => 'u',
    't' => 'a',
    'c' => 'g',
    'g' => 'c',
);

# 原始字符串序列
my $dna_str = "aacatggattgggaac";

# 转成数组
my @dna = split("", $dna_str);

# 准备一个空的 rna 数组
my @rna = ();

# 往 rna 数组里填充翻译后的值
for (@dna) {
    push(@rna, $rna_map{$_});
}

# 再将数组转成字符串
my $rna_str = join("", @rna);

# 大写输出
print uc($rna_str), "\n";
