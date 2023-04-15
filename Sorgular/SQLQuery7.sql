select sehir from M��teriler


--E�er tabloda tekrar een verileri g�rmek istemiyorsam Distinct komutunu kullan�r�m.

select distinct sehir from M��teriler


select distinct sehir,ad from M��teriler



--Order by deyimi �ekilen kay�tlar�n s�ralanmas�n� sa�lar.

select * from M��teriler order by ad


select * from M��teriler order by soyad desc


select sehir,ad,soyad from M��teriler
order by sehir,ad desc


select * from �r�nler order by fiyat desc


select top 3 * from �r�nler order by fiyat desc


--Where deyimi tablo �zerinde kay�t �ekerken belli ko�ullar belirtmemizi sa�lar.

select * from M��teriler
where sehir = 'istanbul'


select * from �r�nler
where k_no = 3


-- <> != farkl�d�r.
-- between aras�nda 
-- not de�il
--is Null / is not Null bo�sa / bo� de�ilse
--in / not IN belirli de�erler i�in  / i�inde de�il
--LIKE belirli bir de�ere  benzerlik

select tarih as 'sat�� tarihi', t_fiyat as 'Toplam fiyat'
from Sat�� where tarih='2022-01-04'


--depoda olmayan �r�nleri g�ster

select * from �r�nler
where stok <> 0


select email from M��teriler
where sehir <> 'istanbul'


-- 10000 tlden ucuz olan �r�nleri listeler

select ad,fiyat,stok from �r�nler
where fiyat <10000


select * from Sat��
where tarih < '2022-01-04'


select ad,fiyat,stok from �r�nler
where fiyat <= 5000


--BETWEEN operat�r� iki de�er aras�ndaki kay�tlar� sorgular.

select * from �r�nler
where fiyat between 5000 and 10000


select * from  �r�nler
where fiyat >= 5000 and fiyat <= 10000


select * from Sat��
where tarih between '2022-01-01' and '2022-01-03'






