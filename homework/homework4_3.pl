#!/usr/bin/perl
# file: exercise4_3.pl

# 第一个参数(10)
my $line1 = int(@ARGV[0]);
# 第二个参数(3)
my $line2 = int(@ARGV[1]);
# 要操作的文件名（路径）
my $filename = "../data/data2_for_homework4.txt";

# 这个判断没有也ok
if ($line1 <= $line2) {
    die "行数1 不能小于 行数2";
}

print "即将删除第 $line1 行之后的数据";
# 打开文件
open FILE, "+<$filename" or die "无法打开 $filename: $!";
# 走一行
<FILE>;
# 看看一行有多长
my $length = tell(FILE);
# 删掉这些行之后的数据
truncate(FILE, $line1 * $length) or die "无法 truncate：$!";
# 回到开头
seek(FILE, 0, 0);
# 完整输出
print while (<FILE>);

print "\n";

seek(FILE, ($line2 - 1) * $length, 0);
print FILE "3030";
seek(FILE, 0, 0);
print while (<FILE>);
close FILE or die "无法关闭文件：$!";
