echo -e "\033[32m================================\033[0m"
echo -e "\033[32m= Compiling bilingual CV . . . =\033[0m"
echo -e "\033[32m================================\033[0m"

echo -e "\033[32m================================\033[0m"
echo -e "\033[32m=  Compiling English CV . . .  =\033[0m"
echo -e "\033[32m================================\033[0m"
texfot latexmk -pdf -interaction=nonstopmode -synctex=1 -file-line-error -shell-escape ./cv-en.tex

echo -e "\033[32m================================\033[0m"
echo -e "\033[32m=  Compiling Chinese CV . . .  =\033[0m"
echo -e "\033[32m================================\033[0m"
texfot latexmk -pdf -interaction=nonstopmode -synctex=1 -file-line-error -shell-escape ./cv-zh.tex

echo -e "\033[32m================================\033[0m"
echo -e "\033[32m=    Merging versions . . .    =\033[0m"
echo -e "\033[32m================================\033[0m"
./cpdf -merge -merge-add-bookmarks cv-en.pdf cv-zh.pdf \
    AND -set-title "CV of John Doe" \
    AND -set-author "John Doe" \
    AND -set-subject "CV" \
    AND -open-at-page 1 \
    AND -bookmarks-open-to-level 2 \
    -o CV-$(date +%Y%m%d).pdf

echo -e "\033[32m================================\033[0m"
echo -e "\033[32m=             Done             =\033[0m"
echo -e "\033[32m================================\033[0m"
