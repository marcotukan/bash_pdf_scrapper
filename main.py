import pandas as pd
import subprocess

# Pass url to bash script
url = 'https://servidoresx3.finanzas.cdmx.gob.mx/menu_transparencia/lgcg/docs/2021/1trim/03_EDO_ACT_ENE_MAR2021.pdf'
with open("pdf_list.sh", "w") as f:
    print('#!/bin/bash\nurl=$' + '"' + url + '"', file=f)
 
# Execute bash script
subprocess.call(['./pdf_scrapper.sh'], shell=True)

# Read panda
df = pd.read_csv('data.csv')
