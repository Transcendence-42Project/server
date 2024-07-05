import psycopg2

try:
    conn = psycopg2.connect(
        dbname="test", 
        user="postgres", 
        password="password", 
        host="postgresql"
    )
except psycopg2.OperationalError as e:
    print(f"Bağlantı kurulamadı: {e}")
    exit(1)

cur = conn.cursor()

ekleme_sorgusu = """
INSERT INTO tablo_adınız (sütun1, sütun2)
VALUES (%s, %s);
"""
veri = ("değer1", "değer2")
cur.execute(ekleme_sorgusu, veri)
conn.commit()


cekme_sorgusu = """
SELECT sütun1, sütun2 FROM tablo_adınız;
"""
cur.execute(cekme_sorgusu)
satırlar = cur.fetchall()
for satır in satırlar:
    print(satır)

cur.close()
conn.close()
