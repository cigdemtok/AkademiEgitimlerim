



	--PRODUCTS  TABLOSU SORGULARI ---
-- 1-> ürün fiyatı 200 den fazla olan ürünleri getir.

Select * from products where stock>50;

-- 2->Ürün stok miktarı 50 ve 100 arasında olanlar
Select * from products where stock between 50 and 100;

-- 3->isminin içerisinde k harfi geçenler 
Select name from products where name like'%k%'

-- 4->İsmi k harfi ile başlayan kayıtları getirir.
Select * from products where name like'k%'

-- 5-> ürün adı gömlek ya da kolye olan kayıtları getirir.
Select * from products where name='gömlek' or name='kolye';

--6->ürün fiyatı 25 ile 250 olan kayıtları getirir.
Select * from products where unit_price IN('25','250');

-- 7->ürün adı ikinci harfi a olan kayıtları getirir
Select * from products where lower(name) like'_a%';

-- 8->ürün adı k ile başlayan kayıtları getirir.
Select * from products where upper(name) like'K%'

-- 9->ürün fiyatı 50 ile 250 arasında olan kayıtları getirir.
Select * from products where  unit_price between '50' and '250';

-- 10-> ürün fiyatlarını küçükten büyüğe sıralar
Select * from products ORDER BY unit_price ASC;

-- 11-> ürün fiyatlarını küçükten büyüğe ürün adını büyükten küçüğe sıralar.
Select * from products ORDER BY unit_price ASC, name DESC ;

			--CUSTOMERS  TABLOSU SORGULARI ---
-- 12-> Customer tablosundan soyadı ipekçi ya da döne olan kayıtları getirir
Select * from customers where surname IN('ipekci','döne');
Select * from customers where surname='ipekci' or surname='döne';

-- 13->  Customer tablosundan ismi çiğdem ve maili etiya olmayan kayıdı getirir.
Select * from customers where name='çiğdem' and not email='a@etiya.com';

-- 14->  Customer tablosundan telefon numarası 0544 ile başlayan kayıtları getirir.
Select * from customers where phone like '0544%'


			--COUNTRİES  TABLOSU SORGULARI ---
-- 15->Ülkesi türkiye olup id adresi 1 olan kayıtları getirir. 
Select * from countries where name='türkiye' and id='1'
