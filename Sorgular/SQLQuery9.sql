--Aggregate Fonksiyonlar
--Bazen t�m kay�tlar� d�nd�rmeden sadece matematiksel bir de�er d�nd�rmek isteyebiliriz.
--Bu durumlarda aggregate (hesaplama) fonksiyonlar� kullan�l�r.

--SUM() toplam fonksiyonu
--kolondaki de�erlerin toplam�n� bulur.

select fiyat from �r�nler


select sum(fiyat) as 'toplam fiyat' from �r�nler


--stoktaki toplam �r�n say�m�z

select sum(stok) from �r�nler


select sum(stok) from �r�nler
where k_no=4


--stokta 10dan fazla bulunan �r�nlerin toplam fiyat�n� listeleme

select sum(fiyat) from �r�nler
where stok > 10


--AVG (ortalama) kolondaki de�erlerin ortalamas�
 
-- �r�n yelpazemdeki �r�nlerin ortalamas�

select avg(fiyat) from �r�nler


select avg(fiyat) from �r�nler
where k_no = 4


--max (en b�y�k) kolondaki en b�y�k de�eri bul

--en pahal� �r�n

select max(fiyat) from �r�nler


select max(fiyat) from �r�nler
where k_no = 2


--min

select min(fiyat) from �r�nler



select min(fiyat) from �r�nler
where k_no = 2


--count kay�t say�s�n� d�nd�r�r

select count(*) from �r�nler


select count(*) from �r�nler
where k_no = 1



select count(*) from M��teriler
select count(adres) from M��teriler   --aras�ndaki de�i�ikli�e dikkat edin


--abs() mutlak de�er fonksiyonu

select abs(-16) as '-16 n�n mutlak de�eri' , abs(16) as '16 n�n mutlak de�eri'


--ceiling() tavan fonksiyonu bir say�dan b�y�k	en k���k tamsay�y� verir.
select ceiling(3.5) , ceiling(7.1)


--floor() taban fonksiyonu kendisinden k���k en b�y�k say�ya yuvarlar.
select floor(3.5) , floor(7.1)


select ceiling(-3.5)


--square say�n�n karesini al�r
select square(4) , square(-4)


select fiyat , square(fiyat) from �r�nler


--sqrt say�n�n karek�k�n� al�r
select sqrt(16),sqrt(144)


--power �st alma fonksiyonudur.
select power(2,3)


select power(2,0)


select power(0,0)





