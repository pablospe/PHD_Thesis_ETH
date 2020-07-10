Once new items are added to the 'bibliography.bib' file, it is possible to sort and clean it by running the 'clean_sort_fix_bibliography.sh' script. This will remove unnecessary fields (check 'keep_bibtex') and sort it by name.

    > ./clean_sort_fix_bibliography.sh



'bibtool' and 'bibclean' are required:

    > sudo apt install bibtool bibclean



In LaTex is possible to have two or more bibliography files, concatenating them with comma (no space):

    \bibliography{bib/abbreviation_short,bib/bibliography}
