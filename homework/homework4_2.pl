#!/usr/bin/perl
# file: exercise4_2.pl

# 5位编码映射表
our %table = (
    'A' => '00000',
    'C' => '00001',
    'D' => '00010',
    'E' => '00011',
    'F' => '00100',
    'G' => '00101',
    'H' => '00110',
    'I' => '00111',
    'K' => '01000',
    'L' => '01001',
    'M' => '01010',
    'N' => '01011',
    'P' => '01100',
    'Q' => '01101',
    'R' => '01110',
    'S' => '01111',
    'T' => '10000',
    'V' => '10001',
    'W' => '10010',
    'Y' => '10011',
);

# 标记要使用的三个文件的名字（路径）
my $filename1 = "../data/data_for_homework4.txt";
my $filename2 = "subseqset.txt";
my $filename3 = "orthdata.txt";

# 保存从第一个文件里提取出来的蛋白质序列
my @protein = ();

# 只读方式打开文件1
open FILE1, "<$filename1" or die "无法打开 $filename1: $!";
# 文件格式：每 3 行一组，我们只要拿到第二行
# while 循环判断条件里是第一行
while (<FILE1>) {
    my $new_line = <FILE1>; # 第二行
    push(@protein, $new_line);
    <FILE1>; # 第三行
}
close FILE1 or die "无法关闭 $filename1: $!";

# 只写方式打开文件2，并写入内容
open FILE2, ">$filename2" or die "无法打开 $filename2: $!";
print FILE2 @protein;
close FILE2 or die "无法关闭 $filename2: $!";

# 只写方式打开文件3，并写入内容
open FILE3, ">$filename3" or die "无法打开 $filename3: $!";

# 对每个蛋白质片段做循环处理
for (@protein) {
    # 数组才能循环，需要先把字符串转成数组
    my @list = split("", $_);
    for (@list) {
        # 从映射表里找到对应的内容，写进文件
        # 这里也可以先存起来，一会再一起写进去
        # 现在这种写法并不好
        print FILE3 $table{$_};
    }
    print FILE3 "\n";
}
close FILE3 or die "无法关闭 $filename3: $!";
