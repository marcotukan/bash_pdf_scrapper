# bash_pdf_scrapper
This repo is just a proposal for a scrapper and parser in bash

# Environment

The only thing we have to add in the base environment is the library poppler-utils which enables linux to read pdfs, among other things. Please run the following 2 commands to adapt your environment.

apt-get update
apt-get install -y poppler-utils


# Python

After adding the libraries we can run the code directly from python using the subprocess library

# Details about extract function

For the moment the function extracts well the "Reporte de Actividades" pdf. From 2021 to present, we are scrapping good the headers, but not for past reports, so we will have to add headers manually, which it isnt a big deal.
