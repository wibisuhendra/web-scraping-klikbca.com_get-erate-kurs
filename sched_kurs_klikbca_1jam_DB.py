
import sched, time
import urllib.request
import contextlib
import re
from datetime import datetime
import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="",
  database="tes_de"
)

s = sched.scheduler(time.time, time.sleep)
url = "https://www.klikbca.com/"
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
    mycursor = mydb.cursor()
    sql = "INSERT INTO data_kurs_klikbca (waktu, USD_beli, USD_jual, SGD_beli, SGD_jual, EUR_beli, EUR_jual, AUD_beli, AUD_jual) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    val = (now,temp[0],temp[1],temp[2],temp[3],temp[4],temp[5],temp[6],temp[7])
    mycursor.execute(sql, val)

    mydb.commit()
    s.enter(3600, 1, update_table, (sc,)) #parameter pertama dalam detik

s.enter(1, 1, update_table, (s,))
s.run()