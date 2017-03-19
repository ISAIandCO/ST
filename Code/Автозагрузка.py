# coding: utf8
#-----------------------------------------------------------------------
import os
# Импорт и отображение времени и даты ----------------------------------
from datetime import datetime
now_time=datetime.now()
hour=now_time.hour
minute=now_time.minute
day=now_time.day
month=now_time.month
if 0<=int(minute)<10:
    minute=str('0'+str(minute))
if 0<=int(day)<10:
    day=str('0'+str(day))
if 0<=int(month)<10:
    month=str('0'+str(month))
# Получение местоположения -----------------------------------------
folder='folder.bat'
os.system(folder)
folder1='folder'
f=open(folder1, encoding='cp1251')
folder3=f.read()
folder2=folder3.rstrip()
folder=str(folder2)
program1=str(folder)
program2=str('\Сортировка.bat')
program=program1+program2
bcmd=(
'SCHTASKS /Create /SC onidle /I 1 /TN Сортировка17 /TR '+program+' & pause')
os.system(bcmd)
