#!/usr/bin/perl
# file: homework5_3.pl

my $sequence = "./sequence";

# 检查这个目录是否存在
if (!-e $sequence) {
    # 如果不存在，就创建
    mkdir($sequence) or die "无法创建 $sequence 目录, $!";
}

# 拿到文件，这里是路径
my $cds = "./cds.txt";

# 打开 cds.txt 文件
open CDS, "<$cds" or die "无法打开 $cds: $!";

my $line;    # 读取的每一行
my $acid;    # AC编号
my @content; # 文件内容

while ($line = <CDS>) {
    if ($line =~ /^>/) {
        # 一个新开头
        if (@content) {
            # 如果之前有数据，就写入
            open FILE, ">$sequence/$acid" or die "无法打开 $acid: $!";
            print FILE @content;
            close FILE or die "无法关闭 $acid: $!";

            # 清空 content
            $#content = -1;
        }
        # 保存编号，但要去掉开头的 ">"
        $acid = substr($line, 1);
    }
    else {
        # 存入 content 中
        push(@content, $line);
    }
}