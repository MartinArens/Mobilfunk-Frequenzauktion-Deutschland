#!/usr/bin/python3

import glob
import sys
import re
import codecs
import mysql.connector

class Bids(object):
    sum = 0
    bids = []

    def add(self, bid):
        self.bids.append(bid)

    def test_sum(self):
        calculated_sum = 0
        for each in self.bids:
            print(each.get("bid"))
            calculated_sum += each.get("bid")

        return self.sum == calculated_sum

def atoi(text):
    return int(text) if text.isdigit() else text

def natural_keys(text):
    return [atoi(c) for c in re.split('(\d+)', text)]

def parse_file(lines, filename):
    round = get_filename(filename)
    del lines[0]
    del lines[0]
    del lines[0]

    for idx, each in enumerate(lines):
        f = each.split()

        if len(f) < 3:
            continue

        if idx < (34 - 3):

            bid = 0
            try:
                bid = to_int(f)
            except:
                Bids.add(merge_dicts(idx, dict(hoechstbieter=None, hoechstgebot=None, runde=round)))
                continue

            company = ''
            if f[-2] == 'DE':
                company = f[-3] + ' ' + f[-2]

            elif (f[-2] == 'Vodafone') or (f[-2] == 'Telekom'):
                company = f[-2]

            Bids.add(merge_dicts(idx, dict(hoechstbieter=company, hoechstgebot=bid, runde=round)))

        elif idx == (34 - 3):
            Bids.sum = to_int(f)

    for each in Bids.bids:
        add_entry = ("INSERT INTO frequenzauktion2015 "
                     "(runde, frequenzbereich, ausstattung, block, hoechstbieter, hoechstgebot) "
                     "VALUES (%s, %s, %s, %s, %s, %s)")

        cursor.execute(add_entry,
                       [each.get('runde'), each.get('frequenzbereich'), each.get('ausstattung'), each.get('block'),
                        each.get('hoechstbieter'), each.get('hoechstgebot')])
        cnx.commit()

    print(round)
    Bids.sum = 0
    Bids.bids = []

def merge_dicts(idx, y):
    x = get_additional_information(idx)
    z = x.copy()
    z.update(y)
    return z

def get_additional_information(idx):
    li = [
        ['700 MHz (gepaart)', '700 A', '2x5 MHz konkret'],
        ['700 MHz (gepaart)', '700 B', '2x5 MHz abstrakt'],
        ['700 MHz (gepaart)', '700 C', '2x5 MHz abstrakt'],
        ['700 MHz (gepaart)', '700 D', '2x5 MHz abstrakt'],
        ['700 MHz (gepaart)', '700 E', '2x5 MHz abstrakt'],
        ['700 MHz (gepaart)', '700 F', '2x5 MHz abstrakt'],
        ['900 MHz (gepaart)', '900 A', '2x5 MHz konkret'],
        ['900 MHz (gepaart)', '900 B', '2x5 MHz abstrakt'],
        ['900 MHz (gepaart)', '900 C', '2x5 MHz abstrakt'],
        ['900 MHz (gepaart)', '900 D', '2x5 MHz abstrakt'],
        ['900 MHz (gepaart)', '900 E', '2x5 MHz abstrakt'],
        ['900 MHz (gepaart)', '900 F', '2x5 MHz abstrakt'],
        ['900 MHz (gepaart)', '900 G', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 A', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 B', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 C', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 D', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 E', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 F', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 G', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 H', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 I', '2x5 MHz abstrakt'],
        ['1,8 GHz (gepaart)', '1800 J', '2x5 MHz konkret'],
        ['1,5 GHz (ungepaart)', '1500 A', '1x5 MHz abstrakt'],
        ['1,5 GHz (ungepaart)', '1500 B', '1x5 MHz abstrakt'],
        ['1,5 GHz (ungepaart)', '1500 C', '1x5 MHz abstrakt'],
        ['1,5 GHz (ungepaart)', '1500 D', '1x5 MHz abstrakt'],
        ['1,5 GHz (ungepaart)', '1500 E', '1x5 MHz abstrakt'],
        ['1,5 GHz (ungepaart)', '1500 F', '1x5 MHz abstrakt'],
        ['1,5 GHz (ungepaart)', '1500 G', '1x5 MHz abstrakt'],
        ['1,5 GHz (ungepaart)', '1500 H', '1x5 MHz abstrakt'],
    ]

    li = li[idx]

    return dict(frequenzbereich=li[0], block=li[1], ausstattung=li[2])

def to_int(f):
    return int(f[-1].replace('.', ''))

def get_filename(filename):
    filename = int(filename.rstrip('.txt').lstrip('ocr/'))
    return filename

if __name__ == "__main__":
    files = glob.glob('ocr/*')
    files.sort(key=natural_keys)

    Bids = Bids()
    cnx = mysql.connector.connect(user='root', password='', host='localhost', database='frequenzauktion')
    cursor = cnx.cursor()

    for filename in files:
        f = codecs.open(filename, 'r', encoding='utf-16')
        lines = f.readlines()
        parse_file(lines, filename)

    cursor.close()


