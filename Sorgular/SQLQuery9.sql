--Aggregate Fonksiyonlar
--Bazen tüm kayýtlarý döndürmeden sadece matematiksel bir deðer döndürmek isteyebiliriz.
--Bu durumlarda aggregate (hesaplama) fonksiyonlarý kullanýlýr.

--SUM() toplam fonksiyonu
--kolondaki deðerlerin toplamýný bulur.

select fiyat from Ürünler


select sum(fiyat) as 'toplam fiyat' from Ürünler


--stoktaki toplam ürün sayýmýz

select sum(stok) from Ürünler


select sum(stok) from Ürünler
where k_no=4


--stokta 10dan fazla bulunan ürünlerin toplam fiyatýný listeleme

select sum(fiyat) from Ürünler
where stok > 10


--AVG (ortalama) kolondaki deðerlerin ortalamasý
 
-- ürün yelpazemdeki ürünlerin ortalamasý

select avg(fiyat) from Ürünler


select avg(fiyat) from Ürünler
where k_no = 4


--max (en büyük) kolondaki en büyük deðeri bul

--en pahalý ürün

select max(fiyat) from ürünler


select max(fiyat) from ürünler
where k_no = 2


--min

select min(fiyat) from ürünler



select min(fiyat) from ürünler
where k_no = 2


--count kayýt sayýsýný döndürür

select count(*) from Ürünler


select count(*) from Ürünler
where k_no = 1



select count(*) from Müþteriler
select count(adres) from Müþteriler   --arasýndaki deðiþikliðe dikkat edin


--abs() mutlak deðer fonksiyonu

select abs(-16) as '-16 nýn mutlak deðeri' , abs(16) as '16 nýn mutlak deðeri'


--ceiling() tavan fonksiyonu bir sayýdan büyük	en küçük tamsayýyý verir.
select ceiling(3.5) , ceiling(7.1)


--floor() taban fonksiyonu kendisinden küçük en büyük sayýya yuvarlar.
select floor(3.5) , floor(7.1)


select ceiling(-3.5)


--square sayýnýn karesini alýr
select square(4) , square(-4)


select fiyat , square(fiyat) from Ürünler


--sqrt sayýnýn karekökünü alýr
select sqrt(16),sqrt(144)


--power üst alma fonksiyonudur.
select power(2,3)


select power(2,0)


select power(0,0)





