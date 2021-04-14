import sched, time
import urllib.request, urllib.parse, urllib.error
import contextlib
import re
from datetime import datetime
import csv
from csv import writer

s = sched.scheduler(time.time, time.sleep)
url = "https://www.klikbca.com/"
now = datetime.now()
filename = now.strftime("%d-%m-%Y %H%M%S")+'datakurs_klikbca.csv' 


with open(filename, 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["Waktu", "USD_beli", "USD_jual", "SGD_beli", "SGD_jual", "EUR_beli", "EUR_jual", "AUD_beli", "AUD_jual"])
    
def update_table(sc): 
    print("Doing stuff...")
    
    temp = []
    with contextlib.closing(urllib.request.urlopen(url)) as html:
        mypage = html.read()
        data = re.findall(b'class=\"kurs\" bgcolor=\".*\">(.*?)</td>', mypage)
        i = 0
        for item in data:

            if i%3 != 0:
                temp.append(float(item.decode("utf-8").replace('.','').replace(',','.')))

            i=i+1
            
    now = datetime.now()
    
    val = [now.strftime("%d-%m-%Y %H:%M:%S"),temp[0],temp[1],temp[2],temp[3],temp[4],temp[5],temp[6],temp[7]]
    writeitems = ','.join([str(elem) for elem in val])
   
    with open(filename, 'a', newline='') as write_obj:
        # Create a writer object from csv module
        csv_writer = csv.writer(write_obj)
        # Add contents of list as last row in the csv file
        csv_writer.writerow(val)
    
    s.enter(30, 1, update_table, (sc,))

s.enter(1, 1, update_table, (s,))
s.run()