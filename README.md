# biCV

Yet another bilingual LaTeX CV

Put content in `content.tex`.

You can add sections like \`Publications' by simply copying the existing ones.

The default languages are Chinese and English. If you are using other languages, please refer to `multiaudience`, and make changes in `biCV.tex` and `compile.sh`.

Default fonts free to use: [Font Awesome 5](https://fontawesome.com/v5/search) (I recommend you use Pro fonts if you have licence), [方正书宋](https://www.foundertype.com/index.php/FontInfo/index/id/151), [方正黑体](https://www.foundertype.com/index.php/FontInfo/index/id/131), [方正楷体](https://www.foundertype.com/index.php/FontInfo/index/id/137).

Use the script to compile:

```bash
chmod +x ./compile.sh
./compile.sh
```

You can also choose a version and compile directly.

Do NOT modify \`latexmkrc' unless you know what you are doing.

This project is tested on TeXLive (macOS and Overleaf).

[Coherent PDF](http://www.coherentpdf.com/) in this project is for non-commercial use only.
