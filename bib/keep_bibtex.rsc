%
% Keep only fields in the standard BibTeX styles
%
keep.field {{author
             title
             journal
             year
             url}
  if $type = article}

keep.field {{author
             title
             booktitle
             year
             url}
  if $type = inproceedings}

keep.field {{author
             title
             institution
             year
             url}
  if $type = techreport}

keep.field {{author
             title
             month
             year
             url}
  if $type = unpublished}

keep.field {{author
             editor
             title
             publisher
             year
             volume
             number
             series
             address
             edition
             month
             url}
  if $type = book}

keep.field {{author
             title
             howpublished
             year}
  if $type = misc}
