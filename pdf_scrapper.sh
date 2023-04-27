# read url as variable
. ./pdf_list.sh

# download
curl $url > file.pdf

# Extract
pdftotext -layout file.pdf output_file.txt

# Preprocess
grep -v -e '^$' output_file.txt | sed 's/,//g' | sed 's/^/  /'| sed -E 's/  /,/g'| tr -s ',' | sed s/,// > preproces.txt

# Filter
grep -v -e '^$' preproces.txt | grep -P '[0-9]+$'|grep -P '., ?[0-9]+, ?[0-9]+'  > data.csv


