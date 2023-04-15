--SELECT Deyimi
--tablodaki verileri se�me yada �ekme komutudur.	

--select	(�EK�LECEK	KOLON	YADA	ALAN) FROM	(tablo ismi)

select ad from M��teriler



SELECT SOYAD FROM M��teriler
--SQL D�L� B�Y�K k���k harfe duyarl� de�ildir.


select tarih
from sat��


select ad,soyad,sehir
from M��teriler



select u_no,ad,fiyat	
from �r�nler


--t�m kolonlar� �ekmek
select * from M��teriler


--kolonlardan ba��ms�z veri �ekmek
select 'sql ile her�ey �ok kolay'


select GETDATE()


select 'm��teri ad�:' , ad from M��teriler


select ad,soyad, ad + soyad from M��teriler


select fiyat,stok from �r�nler



--Kolonlarda takma isim kullanmka(Alias)
--Baz� durumlarda �ekilen kolunun ismi kullan�c� taraf�ndan anla��lmayabilir.
--Bu sebeple daha anlaml� kolon ba�l�klar� kullanmak isteyebiliriz.
--Bunu sa�lamak i�in Alias kullan�l�r.

select s_no as 'Sat�� Numaras�',
       m_no as 'M�steri Numaras�',
	t_fiyat as 'Toplam fiyat'
	from Sat��


--ilk n sat�r� �ekmek(TOP n)
--belirli say�da sat�r� �ekmek i�in kullan�l�r.
--top n ile tablonun ba�tan ilk n sat�r�n� �ekmek i�in kullan�r�z.

select top 5 * from �r�nler


--sistemime kay�tl� ilk 3 m��terinin ad soyad ve ileti�im bilgileri

select top 3 ad,soyad,tel,email
from M��teriler


--belirli y�zdeli kay�tlar� �ekmek (top n percent)

select * from �r�nler
select top 50 percent * from �r�nler 