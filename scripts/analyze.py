import pandas as pd
import numpy as np
import random
from datetime import datetime, timedelta
import psycopg2
import matplotlib.pyplot as plt

conn = psycopg2.connect(
    dbname="aboba",
    user="postgres",
    password="123",
    host="localhost",
    port="5432"
)

cursor = conn.cursor()

artists = [
    (11, 'Тихо Аосима', 'Укиё-э'),
    (12, 'Утагава Хиросигэ', 'Укиё-э'),
    (13, 'Огата Корин', 'Укиё-э'),
    (14, 'Эрина Мацуи', 'Современное искусство'),
    (15, 'Хидеёси', 'Синга'),
    (16, 'Сакаи Ходжю', 'Сюги'),
    (17, 'Таканобу', 'Сюги'),
    (18, 'Кано Хогай', 'Сюги'),
    (19, 'Теруходзи Сеи', 'Сюги'),
    (20, 'Огата Корин', 'Укиё-э'),
    (21, 'Мацуока Осэки', 'Укиё-э'),
    (22, 'Кавабата Кэнсэй', 'Сюги'),
    (23, 'Масаока Шики', 'Укиё-э'),
    (24, 'Такиёси', 'Сюги'),
    (25, 'Тосиката', 'Сюги'),
    (26, 'Хонкаку', 'Укиё-э'),
    (27, 'Ёсииса', 'Синга'),
    (28, 'Кано Эйтё', 'Укиё-э'),
    (29, 'Харуто', 'Сюги'),
    (30, 'Масаока Хоку', 'Укиё-э'),
    (31, 'Хирака Вэсэн', 'Сюги'),
    (32, 'Мураками Сигэнари', 'Укиё-э'),
    (33, 'Тэнъю', 'Укиё-э'),
    (34, 'Мацуда Кикуйэй', 'Синга'),
    (35, 'Исида Геккэй', 'Синга'),  
]

command = "INSERT INTO Artists (artist_id, name, genre) VALUES (%s, %s, %s)"
cursor.executemany(command, artists)
conn.commit()

cursor.close()
conn.close()




conn = psycopg2.connect(
    dbname="aboba",
    user="postgres",
    password="123",
    host="localhost",
    port="5432"
)

cursor = conn.cursor()

command = "SELECT name, genre FROM Artists"

cursor.execute(command)
task_status_data = cursor.fetchall()

cursor.close()
conn.close()

df = pd.DataFrame(task_status_data, columns=['name', 'genre'])

plt.figure(figsize=(12, 6))  
plt.bar(df['name'], df['genre'], color='purple')
plt.xlabel('name')
plt.ylabel('genre')
plt.title('Genre distribution')
plt.xticks(rotation=45) 
plt.tight_layout() 
plt.show()
