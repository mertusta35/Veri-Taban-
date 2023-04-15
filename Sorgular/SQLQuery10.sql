--GROUP BY

--�r�nler tablosunda t�m kay�tlar�n say�s�

select count(*) as 'kay�t say�s�' from �r�nler


select count(*) as 'kay�t say�s�' from �r�nler
where k_no = 1


--gruplamada iki fakt�r bulunur.
--Aggregate fonksiyonlar
--gruplama yap�lacak kolon

select k_no,count(*) from �r�nler
group by k_no


--sat�� tablosunda her m��terinin ka� tane sat�� yapt���n� bulal�m.

select m_no, count(*) from Sat��
group by m_no


--her �ehirde ya�ayan m��teri say�s�na g�re gruplama 

select sehir, count(*) from M��teriler
group by sehir


--�r�nler tablosunda her kateg�ri i�in toplam �r�n say�s�

select k_no,count(*) from �r�nler
group by k_no


--her kategori i�in �r�nlerin toplam fiyat�

select k_no,sum(fiyat) from �r�nler
group by k_no


select sehir,adres,count(*) from M��teriler
group by sehir,adres


--gruplamada NULL de�erler
--gruplama yaparken e�er gruplama yap�lan kolonda NULL de�er mevcutsa sql bu null  de�erler i�inde bir grup olu�turacakt�r.

select adres, count(*) from M��teriler
group by adres


--Gurplamada where ifadesi kullanmak
--baz� durumlarda gurplama yapmadan �nce guruplanacak verileri �zerinde ko�ul belirtmemiz gerekebilir
--b�yle durumlarda gorup by  ifadesinden �nce where deyimi kullan�l�r

--�r�nler tablosunda her katagori i�in toplam fiyat� listelensin
--fakat stokta olmayan �r�nler dahil edilmesi

select k_no,sum(fiyat)  from �r�nler
where stok <> 0
group by k_no


--sadece hotmail hesb�na sahip m��teriler i�in,m��teri say�s� �ehir kolonun g�re guruplans�n
--hotmail kullanan  her �ehirdeki m��teri say�s�

select sehir,count(*) from M��teriler
where email like '%hotmail.com'
group by sehir


--having ile ko�ul belirtmek
--bazen guruplanm�� verileri �zerinde ko�ul belirmemiz gerekebilir
--having deyimi guruplama yapt�ktan sonra kullan�l�r

select k_no ,count(*) from �r�nler
group by k_no


--toplam �r�n say�s� 5 ve 5ten fazla olan katagoriler

select k_no, count(*) from �r�nler
group by k_no
having count(*) >=5


--En az 2 sat�� yapan m��teriler

select m_no,count(*) from Sat��
group by m_no
having count(*) >1


--�NEML�
--having deyimi ile  beraber aggragete fonksiyon kullan�l�r

--en az iki m��teri bulunan �ehiler


select sehir , count(*) from M��teriler
group by sehir
having count(*)  >= 2


--katagori numaras�na g�re �r�n fiyatlar�n�n  toplam�n� guruplamam
select k_no , sum(fiyat) from �r�nler
group by k_no



--se�ilen kay�tlar �zerinden where ile ko�ul belirtelim
--�rne�in fiyat� 100den b�y�k olan kay�tlar

select k_no , sum(fiyat) from �r�nler
where fiyat>100
group by k_no


--�rne�in fiyat� 50000den b�y�k olan kay�tlar

select k_no , sum(fiyat) from �r�nler
where fiyat>100
group by k_no
having  sum(fiyat) >50000


--String fonksiyonlar	
--upper()
--string veriyi veya se�ilen kolondaki karaktersel veriyi b�y�k harfe �evirme

select  ad, upper(soyad) from M��teriler


--lower()
--string veriyi veya se�ilen kolondaki karaktersel veriyi k���k harfe �evirme

select  ad +' '+soyad,
upper(ad +' '+soyad) ,
lower(ad +' '+soyad)
from M��teriler


--len() bir string ifadenin  veya kolondaki verinin uzunlu�unu d�nd�r�r
select  ad +' '+soyad as 'Ad Soyad',
len(ad +' '+soyad) as 'Uzunluk'
from M��teriler





