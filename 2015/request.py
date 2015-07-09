#!/usr/bin/python3

import requests
import argparse
# import pytesseract

def set_url(step):
    return 'http://www.bundesnetzagentur.de/DE/Sachgebiete/Telekommunikation/Unternehmen_Institutionen/Frequenzen/OeffentlicheNetze/Mobilfunknetze/Projekt2016/Rundenergebnisse/Runde' + step + '.png?__blob=publicationFile&v=4'

def get_file(step):
    step = str(step)
    url = set_url(step)
    r = requests.get(set_url(step), stream=True)

    if r.status_code == 200:
        with open('imgData/' + step + '.png', 'wb') as f:
            for chunk in r.iter_content():
                f.write(chunk)
        print("> Saved Runde" + step + '.png');

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("min", help="Please enter the min round number")
    parser.add_argument("max", help="Please enter the max round number")
    args = parser.parse_args()

    min = args.min
    max = args.max

    for x in range(int(min), int(max) + 1):
        get_file(x)
