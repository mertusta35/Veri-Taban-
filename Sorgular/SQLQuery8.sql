--NOT koşula olumsuzluk katar.Birçok operatör ile birlikte kullanılır
--Not Between
--Is not null
--not like
--not in


--fiyatı 5000 ile 10000 arasında olmayan tüm ürünleri listeleme

select * from ürünler
where fiyat not between 5000 and 10000


--2 ocak 2022 ile 3 ocak 2022 arasında olmayan satış bilgilerini listeleyiniz.

select * from Satış
where tarih not between	'2022-01-02' and  '2022-01-03'	


--IS NULL kolondaki değerin NULL olup olmadığını kontrol eder.

select * from Müşteriler
where adres is null

select * from Müşteriler
where adres is not null



--In / not In belli değerler kümesi içinde arama yapıyorsak kullanılır.
--izmir veya ankara şehürlerinden birinde yaşayan müşteriler

select * from Müşteriler
where sehir in ('izmir','ankara')

--3 büyük şehir dışında yaşayan müşteriler

select * from Müşteriler
where sehir not in ('izmir','ankara','istanbul')



--LIKE operatörü kolon içinde	bulunan değerin benzer bir kalıba uyup uymadığını kontrol eder.

-- %0 veya daha fazla karakter anlamına gelir.
-- _(veya ?) ifadesi sadece 1 karakter anlamına gelir.

--ismi k harfi ile başlayan müşteriler

select * from Müşteriler
where ad like 'k%'


select * from Müşteriler
where ad not like 'k%'


--soyadı k harfi ile bitenler

select * from Müşteriler
where soyad like '%k'


--isminin herhangi bir yerinde tv geçen ürünler

select * from Ürünler
where ad like '%tv%'


--ismi "s" ile başlayan ve "tv" ile biten ürünler

select * from Ürünler
where ad like 's%tv'


--"hotmail" hesabına sahip olan müşterilerimiz

select * from Müşteriler
where email like '%hotmail%'


--türkcell operatörü kullanan müşterilerim

select * from Müşteriler
where tel like '0530%'
   or tel like '0532%'
   or tel like '0533%'
   or tel like '0536%'


-- isminin ikinci karakteri e olan müşteriler

select * from Müşteriler
where ad like '_e%'

--ismi 4 karakterli olan müşteriler

select * from Müşteriler
where ad like '____'



-- AND ve OR operatörleri
--sql sorgularında birden fazla koşul belirtildiği zaman bu koşullar and ve or operatörleriyle birbirine bağlanır.
--and kullanıldığı zaman koşulların tamamının sağlanması gerekir.
--or ise koşullardan herhangi biri sağlanıyorsa yeterlidir.

--burdur şehrinde olan ve adres kolonu NULL olan müşteriler

select * from Müşteriler
where sehir='burdur' and adres is null

--kategori numarası 5 olan veya fiyatı 5000den küçük olan ürünler

select * from Ürünler
where k_no=5 or fiyat > 5000


--ürünler tablosunda bulunan ürünlerden kategori numarası 2 olan veya içinde "tv" geçen ürünlerden 
--aynı zamanda fiyatı 10000 büyük olanları listeleyelim.

--yanlış olan
select * from Ürünler
where fiyat > 10000 and k_no=2 or ad like '%tv%'

--olması gereken
select * from Ürünler
where fiyat > 10000 and (k_no = 2 or ad like '%tv%')
