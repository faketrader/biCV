#!/usr/bin/env perl
#########################################
# 编译后处理脚本
#
# 复制命名版本
#########################################

use strict;
use warnings;
use utf8;
use File::Copy;
use POSIX qw(strftime);

binmode(STDOUT, ':utf8');
binmode(STDERR, ':utf8');

# 获取当前年月
my $version = strftime("%Y%m", localtime);

# 定义颜色
my $GREEN = "\033[1;32m";
my $OFF = "\033[0m";

# 输出目录
my $output_dir = 'output';

print "\n";
print "${GREEN}================================${OFF}\n";
print "${GREEN}=   复制命名版本文件 ...       =${OFF}\n";
print "${GREEN}================================${OFF}\n";

# 复制中文在前版本
my $cn_source = "$output_dir/cv-zh-en.pdf";
if (-f $cn_source) {
    my $cn_target = "$output_dir/张三-硕士-软件开发-Java-v${version}.pdf";
    copy($cn_source, $cn_target) or warn "无法复制到 $cn_target: $!";
    print "  ✓ cv-zh-en.pdf → $cn_target\n";
}

# 复制英文在前版本
my $en_source = "$output_dir/cv-en-zh.pdf";
if (-f $en_source) {
    my $en_target = "$output_dir/ZHANG-San-Master-SDE-Java-v${version}.pdf";
    copy($en_source, $en_target) or warn "无法复制到 $en_target: $!";
    print "  ✓ cv-en-zh.pdf → $en_target\n";
}

print "${GREEN}================================${OFF}\n";
print "${GREEN}=           编译完成           =${OFF}\n";
print "${GREEN}================================${OFF}\n";
