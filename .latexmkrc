################################################
# @title    Bilingual CV LaTeXmk Configuration #
# @author   faketrader                         #
# @date     2026                               #
################################################

# 启用 UTF-8 支持
use utf8;
binmode(STDOUT, ':utf8');
binmode(STDERR, ':utf8');

# 将 fonts 目录添加到 TeX 搜索路径，使 CTeX 能找到自定义字体集
$ENV{'TEXINPUTS'} = './fonts//:' . ($ENV{'TEXINPUTS'} // '');

# 配置辅助文件目录
$aux_dir = 'aux';

# 配置输出目录
$out_dir = 'output';

# 检查编译环境并设置编译器
use Config;

if ($Config{osname} eq 'darwin') {
    # macOS 环境使用 xelatex
    $pdflatex = 'xelatex %O %S';
} else {
    # Overleaf 或其他环境使用 lualatex
    $pdflatex = 'lualatex %O %S';
}

# 默认编译这 4 个文件
@default_files = (
    'cv-zh.tex',      # Chinese
    'cv-en.tex',      # English
    'cv-zh-en.tex',   # Chinese + English
    'cv-en-zh.tex',   # English + Chinese
);

# 自定义清理后缀
$clean_ext = 'log fls fdb_latexmk synctex.gz';

# 编译成功后执行后处理脚本（用于重命名）
$success_cmd = 'perl scripts/post-build.pl';
