--GROUP BY

--ürünler tablosunda tüm kayýtlarýn sayýsý

select count(*) as 'kayýt sayýsý' from Ürünler


select count(*) as 'kayýt sayýsý' from Ürünler
where k_no = 1


--gruplamada iki faktör bulunur.
--Aggregate fonksiyonlar
--gruplama yapýlacak kolon

select k_no,count(*) from Ürünler
group by k_no


--satýþ tablosunda her müþterinin kaç tane satýþ yaptýðýný bulalým.

select m_no, count(*) from Satýþ
group by m_no


--her þehirde yaþayan müþteri sayýsýna göre gruplama 

select sehir, count(*) from Müþteriler
group by sehir


--ürünler tablosunda her kategöri için toplam ürün sayýsý

select k_no,count(*) from Ürünler
group by k_no


--her kategori için ürünlerin toplam fiyatý

select k_no,sum(fiyat) from Ürünler
group by k_no


select sehir,adres,count(*) from Müþteriler
group by sehir,adres


--gruplamada NULL deðerler
--gruplama yaparken eðer gruplama yapýlan kolonda NULL deðer mevcutsa sql bu null  deðerler içinde bir grup oluþturacaktýr.

select adres, count(*) from Müþteriler
group by adres


--Gurplamada where ifadesi kullanmak
--bazý durumlarda gurplama yapmadan önce guruplanacak verileri üzerinde koþul belirtmemiz gerekebilir
--böyle durumlarda gorup by  ifadesinden önce where deyimi kullanýlýr

--ürünler tablosunda her katagori için toplam fiyatý listelensin
--fakat stokta olmayan ürünler dahil edilmesi

select k_no,sum(fiyat)  from Ürünler
where stok <> 0
group by k_no


--sadece hotmail hesbýna sahip müþteriler için,müþteri sayýsý þehir kolonun göre guruplansýn
--hotmail kullanan  her þehirdeki müþteri sayýsý

select sehir,count(*) from Müþteriler
where email like '%hotmail.com'
group by sehir


--having ile koþul belirtmek
--bazen guruplanmýþ verileri üzerinde koþul belirmemiz gerekebilir
--having deyimi guruplama yaptýktan sonra kullanýlýr

select k_no ,count(*) from Ürünler
group by k_no


--toplam ürün sayýsý 5 ve 5ten fazla olan katagoriler

select k_no, count(*) from Ürünler
group by k_no
having count(*) >=5


--En az 2 satýþ yapan müþteriler

select m_no,count(*) from Satýþ
group by m_no
having count(*) >1


--ÖNEMLÝ
--having deyimi ile  beraber aggragete fonksiyon kullanýlýr

--en az iki müþteri bulunan þehiler


select sehir , count(*) from Müþteriler
group by sehir
having count(*)  >= 2


--katagori numarasýna göre ürün fiyatlarýnýn  toplamýný guruplamam
select k_no , sum(fiyat) from Ürünler
group by k_no



--seçilen kayýtlar üzerinden where ile koþul belirtelim
--örneðin fiyatý 100den büyük olan kayýtlar

select k_no , sum(fiyat) from Ürünler
where fiyat>100
group by k_no


--örneðin fiyatý 50000den büyük olan kayýtlar

select k_no , sum(fiyat) from Ürünler
where fiyat>100
group by k_no
having  sum(fiyat) >50000


--String fonksiyonlar	
--upper()
--string veriyi veya seçilen kolondaki karaktersel veriyi büyük harfe çevirme

select  ad, upper(soyad) from Müþteriler


--lower()
--string veriyi veya seçilen kolondaki karaktersel veriyi küçük harfe çevirme

select  ad +' '+soyad,
upper(ad +' '+soyad) ,
lower(ad +' '+soyad)
from Müþteriler


--len() bir string ifadenin  veya kolondaki verinin uzunluðunu döndürür
select  ad +' '+soyad as 'Ad Soyad',
len(ad +' '+soyad) as 'Uzunluk'
from Müþteriler





