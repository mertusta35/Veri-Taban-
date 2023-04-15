select sehir from Müþteriler


--Eðer tabloda tekrar een verileri görmek istemiyorsam Distinct komutunu kullanýrým.

select distinct sehir from Müþteriler


select distinct sehir,ad from Müþteriler



--Order by deyimi çekilen kayýtlarýn sýralanmasýný saðlar.

select * from Müþteriler order by ad


select * from Müþteriler order by soyad desc


select sehir,ad,soyad from Müþteriler
order by sehir,ad desc


select * from Ürünler order by fiyat desc


select top 3 * from Ürünler order by fiyat desc


--Where deyimi tablo üzerinde kayýt çekerken belli koþullar belirtmemizi saðlar.

select * from Müþteriler
where sehir = 'istanbul'


select * from Ürünler
where k_no = 3


-- <> != farklýdýr.
-- between arasýnda 
-- not deðil
--is Null / is not Null boþsa / boþ deðilse
--in / not IN belirli deðerler için  / içinde deðil
--LIKE belirli bir deðere  benzerlik

select tarih as 'satýþ tarihi', t_fiyat as 'Toplam fiyat'
from Satýþ where tarih='2022-01-04'


--depoda olmayan ürünleri göster

select * from Ürünler
where stok <> 0


select email from Müþteriler
where sehir <> 'istanbul'


-- 10000 tlden ucuz olan ürünleri listeler

select ad,fiyat,stok from Ürünler
where fiyat <10000


select * from Satýþ
where tarih < '2022-01-04'


select ad,fiyat,stok from Ürünler
where fiyat <= 5000


--BETWEEN operatörü iki deðer arasýndaki kayýtlarý sorgular.

select * from Ürünler
where fiyat between 5000 and 10000


select * from  Ürünler
where fiyat >= 5000 and fiyat <= 10000


select * from Satýþ
where tarih between '2022-01-01' and '2022-01-03'






