cp bibliography.bib bibliography_backup.bib
bibtool -r keep_bibtex.rsc bibliography.bib -o bibliography_new.bib

# Cleaning 'bibliography.bib' using bibtool (removing 'abstract' and 'file' field). See:
#     https://tex.stackexchange.com/questions/371401/remove-abstracts-from-bib#371429


# Sorted by author (last name of the first author), and fixed names with bibclean:
bibtool -s --sort.format='{%N(author)}' -i bibliography_new.bib -o bibliography_new02.bib
bibclean bibliography_new02.bib -max-width 0 -align-equals -delete-empty-values -fix-names >bibliography_new03.bib
cp bibliography_new03.bib bibliography.bib

rm bibliography_new*.bib
ls -lh bibliography*.bib

# bibclean bibliography.bib -max-width 0 -align-equals -delete-empty-values -no-fix-names


# Change citation to lowercase
# sed -e 's/\(cite{[^}]*}\)/\L\1/g' $(find . -name "*.tex") | ag "cite{"
