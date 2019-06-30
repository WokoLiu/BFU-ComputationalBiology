#!/usr/bin/perl
# file: homework3_2.pl

# 翻译对照表
# 因为最终输出是大写的，这里也用大写会省点事
my %cdna_map = (
    'A' => 'T',
    'T' => 'A',
    'G' => 'C',
    'C' => 'G',
);

# 获取输入的 dna
print "请输入一条 DNA 序列：";
chomp(my $dna_str = <STDIN>);

# 保证输入大写，才能利用上 %cdna_map
my @dna = split("", uc($dna_str));

# 反向
reverse(@dna);

# 互补 + 大写
for (@dna) {
    print $cdna_map{$_};
}
