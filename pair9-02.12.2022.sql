-- tablolara insert kullanarak data set oluşturunuz.

insert into sellers ( name,rating,follower_count ) values ('star_shop','8','500') ,('green_shop','9','5400'),('yellow_shop','8','5600'),('r_shop','8','500')

insert into customer ( name, surname,email,shipping_adressid,invoice_adressid ) values ('atilla','ertürk','atilla@gmail.com','3','4'),('gözde','rahmet','gozge@gmail.com','3','2'),('duygu','kara','duyguk@gmail.com','2','2'),('berk','tonguc','berkt@gmail.com','3','4'),('cigdem','tok','cigdem@gmail.com','4','1')

insert into basket (orderid) values ('2'),('1'),('3')

insert into orders (name, cargoid, customerid, rating ) values ('kazak','1','4','8'),('çorap','1','2','8'),('atkı','1','2','8'),('süs','1','4','8')

-- basket içerisinde order id'si 3 olan siparişi siliniz.

delete from basket where orderid = '3'

-- order içerisinde id lere göre isimleri değiştiriniz

update orders set name = 'sandalye' where id = '4'

-- müşteri bilgileri arasına telefon numarası kolonunu ekleyiniz

alter table customer add phone_number varchar(255)

-- müşteri bilgilerinden telefon numarası kolonunu düşürünüz

alter table customer drop phone_number

-- products tablosunda unit_price'ı ortalamanın üstünde olan ürünleri getiriniz.

select * from products where stock > (select avg(stock) from products)

-- 4 üründen fazla sipariş veren müşterileri bulduk.
select customerid, count(*) from orders 
group by customerid 
having count(*)>4
-- 5  Sipariş tutarı 2000 den fazla olan müşterileri getirir.

select c.name,sum(o.total_price) as "Toplam Sipariş Tutarı" from customer c
inner join orders o
on c.id=o.customerid
group by c.name
having sum(o.total_price)>2000
order by sum(o.total_price) desc

-- 6 - Bugüne kadar en az 10.000₺ satış yapmış satıcıları listeleyiniz.
select s.name as satıcı_adı,sum(p.unit_price) from sellers s
inner join basket_sellers bs
on s.id=bs.sellersid
inner join basket b
on bs.basketid=b.id
inner join products p
on p.basketid=b.id
group by s.name
having sum(p.unit_price)>1000

--7  Her kategoride en çok kazandıran ürünü (price * quantity değeri ele alınmalıdır) listeleyiniz.

select c.name ,sum(p.unit_price) from sellers s
inner join basket_sellers bs
on s.id=bs.sellersid
inner join basket b
on bs.basketid=b.id
inner join products p
on p.basketid=b.id
inner join categories c
on p.categoryid=c.id
group by c.name
 

-- 8 Adreslerde kaç adet ülke olduğunu buldurur.

select count(*) as adres_sayısı,co.name as ülke_adı from adress a
inner join street s
on a.street_id=s.id
inner join city c
on s.cityid=c.id
inner join country co
on co.id=c.countryid
group by co.name



-- 9 Ülke için kaç adet şehir olduğunu buldurur.

select count(*) as sehir_sayisi, co.name from country co
inner join city ci on co.id = ci.countryid 
group by co.name

-- 10 şehir için kaç adet cadde olduğunu buldurur.

select count(*) as cadde_sayisi, ci.name from city ci
inner join street st on ci.id = st.cityid
group by ci.name

