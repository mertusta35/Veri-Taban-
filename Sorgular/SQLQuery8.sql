--NOT ko�ula olumsuzluk katar.Bir�ok operat�r ile birlikte kullan�l�r
--Not Between
--Is not null
--not like
--not in


--fiyat� 5000 ile 10000 aras�nda olmayan t�m �r�nleri listeleme

select * from �r�nler
where fiyat not between 5000 and 10000


--2 ocak 2022 ile 3 ocak 2022 aras�nda olmayan sat�� bilgilerini listeleyiniz.

select * from Sat��
where tarih not between	'2022-01-02' and  '2022-01-03'	


--IS NULL kolondaki de�erin NULL olup olmad���n� kontrol eder.

select * from M��teriler
where adres is null

select * from M��teriler
where adres is not null



--In / not In belli de�erler k�mesi i�inde arama yap�yorsak kullan�l�r.
--izmir veya ankara �eh�rlerinden birinde ya�ayan m��teriler

select * from M��teriler
where sehir in ('izmir','ankara')

--3 b�y�k �ehir d���nda ya�ayan m��teriler

select * from M��teriler
where sehir not in ('izmir','ankara','istanbul')



--LIKE operat�r� kolon i�inde	bulunan de�erin benzer bir kal�ba uyup uymad���n� kontrol eder.

-- %0 veya daha fazla karakter anlam�na gelir.
-- _(veya ?) ifadesi sadece 1 karakter anlam�na gelir.

--ismi k harfi ile ba�layan m��teriler

select * from M��teriler
where ad like 'k%'


select * from M��teriler
where ad not like 'k%'


--soyad� k harfi ile bitenler

select * from M��teriler
where soyad like '%k'


--isminin herhangi bir yerinde tv ge�en �r�nler

select * from �r�nler
where ad like '%tv%'


--ismi "s" ile ba�layan ve "tv" ile biten �r�nler

select * from �r�nler
where ad like 's%tv'


--"hotmail" hesab�na sahip olan m��terilerimiz

select * from M��teriler
where email like '%hotmail%'


--t�rkcell operat�r� kullanan m��terilerim

select * from M��teriler
where tel like '0530%'
   or tel like '0532%'
   or tel like '0533%'
   or tel like '0536%'


-- isminin ikinci karakteri e olan m��teriler

select * from M��teriler
where ad like '_e%'

--ismi 4 karakterli olan m��teriler

select * from M��teriler
where ad like '____'



-- AND ve OR operat�rleri
--sql sorgular�nda birden fazla ko�ul belirtildi�i zaman bu ko�ullar and ve or operat�rleriyle birbirine ba�lan�r.
--and kullan�ld��� zaman ko�ullar�n tamam�n�n sa�lanmas� gerekir.
--or ise ko�ullardan herhangi biri sa�lan�yorsa yeterlidir.

--burdur �ehrinde olan ve adres kolonu NULL olan m��teriler

select * from M��teriler
where sehir='burdur' and adres is null

--kategori numaras� 5 olan veya fiyat� 5000den k���k olan �r�nler

select * from �r�nler
where k_no=5 or fiyat > 5000


--�r�nler tablosunda bulunan �r�nlerden kategori numaras� 2 olan veya i�inde "tv" ge�en �r�nlerden 
--ayn� zamanda fiyat� 10000 b�y�k olanlar� listeleyelim.

--yanl�� olan
select * from �r�nler
where fiyat > 10000 and k_no=2 or ad like '%tv%'

--olmas� gereken
select * from �r�nler
where fiyat > 10000 and (k_no = 2 or ad like '%tv%')
