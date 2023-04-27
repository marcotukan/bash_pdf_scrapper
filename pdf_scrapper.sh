# read url as variable
. ./pdf_list.sh

# download
curl $url > file.pdf

# Extract
pdftotext -layout file.pdf output_file.txt

# Preprocess (just adding commas, and separating words from numbers)
grep -v -e '^$' output_file.txt | sed 's/,//g' | sed 's/^/  /'| sed -E 's/  /,/g'| tr -s ',' | sed s/,// > preproces.txt

# Filter (we are just keeping the lines that have 3 columns: 1 string and 2 numeric)
grep -v -e '^$' preproces.txt | grep -P '[0-9]+$'|grep -P '., ?[0-9]+, ?[0-9]+'  > data.csv


