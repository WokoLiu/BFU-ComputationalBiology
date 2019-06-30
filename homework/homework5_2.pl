#!/usr/bin/perl
# file: homework5_2.pl

# 输入三个dna，转成一个密码子
sub translate_one {
    my $dna = @_[0];
    if (length($dna) != 3) {
        print <STDERR>, "\n结尾的 DNA 不足3位，无法翻译: ", $dna;
        return "";
    }
    if ($dna =~ /ATG/i) {
        # 起始密码子
        return "M";
    }
    elsif ($dna =~ /TAA|TAG|TGA/i) {
        # 终止密码子
        return "*";
    }
    elsif ($dna =~ /TT[TC]/i) {
        return "F";
    }
    elsif ($dna =~ /TT[AG]|CT[ATCG]/i) {
        return "L";
    }
    elsif ($dna =~ /AT[ATC]/i) {
        return "I";
    }
    elsif ($dna =~ /GT[ATGC]/i) {
        return "V";
    }
    elsif ($dna =~ /TC[ATCG]|AG[TC]/i) {
        return "S";
    }
    elsif ($dna =~ /CC[ATCG]/i) {
        return "P";
    }
    elsif ($dna =~ /AC[ATCG]/i) {
        return "T";
    }
    elsif ($dna =~ /GC[ATCG]/i) {
        return "A";
    }
    elsif ($dna =~ /TA[TC]/i) {
        return "Y";
    }
    elsif ($dna =~ /CA[TC]/i) {
        return "H";
    }
    elsif ($dna =~ /CA[AG]/i) {
        return "Q";
    }
    elsif ($dna =~ /AA[TC]/i) {
        return "N";
    }
    elsif ($dna =~ /AA[AG]/i) {
        return "K";
    }
    elsif ($dna =~ /GA[TC]/i) {
        return "D";
    }
    elsif ($dna =~ /GA[AG]/i) {
        return "E";
    }
    elsif ($dna =~ /TG[TC]/i) {
        return "C";
    }
    elsif ($dna =~ /TGG/i) {
        return "W";
    }
    elsif ($dna =~ /CG[ATGC]|AG[AG]/i) {
        return "R";
    }
    elsif ($dna =~ /GG[ATGC]/i) {
        return "G";
    }
    else {
        print <STDERR>, "找不到对应的密码子", $dna, "\n";
        return "";
    }
}

sub dna2protein {
    my $dna = @_[0]; # 输入的完整dna序列
    my $protein;     # 要返回的蛋白质序列
    my $start = 0;   # 是否开始翻译
    my $one;         # 单个密码子
    my $i = 0;
    while ($i < length($dna) - 2) {
        $one = translate_one(substr($dna, $i, 3));
        # print "one", $one, "\n";
        if ($start == 0) {
            # 还没开始
            if ($one eq "M") {
                # 开始翻译
                $start = 1;
                $protein = "M";
                $i += 3;
            }
            else {
                $i += 1;
            }
        }
        else {
            # 翻译途中
            if ($one eq "*") {
                # 终止密码子
                return $protein;
            }
            else {
                $protein .= $one;
            }
            $i += 3;
        }
    }
    # 没遇到终止密码子
    return $protein;
}

print "输入一条 DNA 序列: ";
chomp(my $dna = <STDIN>);
my $protein = dna2protein($dna);
print "翻译后的蛋白质是: $protein\n";


# 测试：
# print dna2protein("aaaATGcgacgtcttcgtacgggactagctcgtgtcggtcgc"), "\n";
# MRRLRTGLARVGR
