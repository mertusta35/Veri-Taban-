--SELECT Deyimi
--tablodaki verileri seçme yada çekme komutudur.	

--select	(ÇEKÝLECEK	KOLON	YADA	ALAN) FROM	(tablo ismi)

select ad from Müþteriler



SELECT SOYAD FROM Müþteriler
--SQL DÝLÝ BÜYÜK küçük harfe duyarlý deðildir.


select tarih
from satýþ


select ad,soyad,sehir
from Müþteriler



select u_no,ad,fiyat	
from Ürünler


--tüm kolonlarý çekmek
select * from Müþteriler


--kolonlardan baðýmsýz veri çekmek
select 'sql ile herþey çok kolay'


select GETDATE()


select 'müþteri adý:' , ad from Müþteriler


select ad,soyad, ad + soyad from Müþteriler


select fiyat,stok from ürünler



--Kolonlarda takma isim kullanmka(Alias)
--Bazý durumlarda çekilen kolunun ismi kullanýcý tarafýndan anlaþýlmayabilir.
--Bu sebeple daha anlamlý kolon baþlýklarý kullanmak isteyebiliriz.
--Bunu saðlamak için Alias kullanýlýr.

select s_no as 'Satýþ Numarasý',
       m_no as 'Müsteri Numarasý',
	t_fiyat as 'Toplam fiyat'
	from Satýþ


--ilk n satýrý çekmek(TOP n)
--belirli sayýda satýrý çekmek için kullanýlýr.
--top n ile tablonun baþtan ilk n satýrýný çekmek için kullanýrýz.

select top 5 * from Ürünler


--sistemime kayýtlý ilk 3 müþterinin ad soyad ve iletiþim bilgileri

select top 3 ad,soyad,tel,email
from Müþteriler


--belirli yüzdeli kayýtlarý çekmek (top n percent)

select * from Ürünler
select top 50 percent * from ürünler 