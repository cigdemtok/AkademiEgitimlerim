--- 1->Kargo şirketlerine toplam kaç para ödendiğini hesaplayınız.

select sum(price) as toplam_kargo_tutarı from orders
inner join cargo
on orders.cargoid= cargo.id 

--- 2->Halihazırda indirimli ve isminde 'b' geçen tüm ürünleri listeleyiniz.

ALTER TABLE products
ADD discount_rate numeric
insert into products (name, unit_price, stock, categoryid, paymentid, discount_rate) 
values ('telefon', '1000', '90', '4', '4', '80' ),('saat', '100', '908', '4', '4', '70' ),
('bilgisayar', '10000', '508', '4', '4', '60' ), ('tablet', '500', '50', '4', '4', '80')
select * from products
where discount_rate is not null and name like '%b%'


--- 3-> 3. harfi c olan tüm ürünleri listeleyiniz.
select * from products
where name like '__c%'

--- 4-> Bir kişinin sipariş oluştururken kullanacağı insert komutlarını yazınız.(alt tablolar dahil ve siparişte en az 3 ürün olacak şekilde)

insert into products_order (orderid, productsid, total_price, quantity) 
values ('2', '3', '90', '4'),('3', '1', '80', '4'),
('1', '1', '50', '4')

-- 5-> iade durumları değiştiğinde oluşacak update komutunu geliştiriniz.

update returns set return_reason = 'İade değişikliği'
from returns r inner join product_orders_id poi on r.product_orders_id = poi.id 
where poi.id = 1

--- 6-> İndirim halindeki ürünlerin indirim uygulanmış fiyatlarıyla listelenmesini sağlayınız.

select name, unit_price, discount_rate, unit_price-(unit_price*discount_rate/100) as indirimli_fiyat 
from products where discount_rate is not null 

-- 7-> Kullanıcı bir ürünü review ettiğinde (puanladığında) oluşacak insert komutunu geliştiriniz.

insert into products(name,unit_price,stock,categoryid,paymentid,basketid,discount_couponid,discount_rate,rating)
values('ayakkabı','500','70',7, 4,2,1,1,4)
select AVG(rating) as ürün_puanı from products 
where name='ayakkabı'
	
--- 8-> Kullanıcı bir ürün iade etmek istediğinde oluşacak insert komutunu geliştiriniz.
insert into refund (type,description,order_details_id)values('1','bozuk',1)
select * from refund

select * from products
-- 9->İade durumları değiştiğinde oluşacak update komutunu geliştiriniz.

UPDATE return_products 
SET orderid='6', refundid='7', cargoid='8', products_orderid='8'
FROM refund
WHERE refund.id = return_products.refundid;

-- 10-> Satıcı ürünü güncellemek istediğinde oluşacak örnek bir update komutu geliştiriniz.

UPDATE products
SET name='new_namesss', unit_price='10', categoryid='5', stock='15'
FROM products_colour
WHERE products_colour.productsid = products.id;

-- 11-> Sipariş durumu (kargoda,taşımada vs) değiştiğinde tabloda değişikliği yapacak update komutunu geliştiriniz.

ALTER TABLE products_order ADD order_status varchar(255);
UPDATE products_order
SET order_status='Ready for dispatch' where orderid='2';

-- 12-> Kullanıcı sepete ürün eklediğinde oluşacak insert komutunu geliştiriniz.

INSERT INTO basket (orderid)
SELECT orders.id FROM orders
WHERE customerid = '4';

-- 13-> Kullanıcı sepetteki ürün adetini artırdığında oluşacak komutu geliştiriniz.

update basket set quantity = 7
where id = 5

--- 14-> En az bir sipariş vermiş ancak hiç "MNG Kargo" kullanmamış müşterileri listeleyiniz.

select customerid, shippers.name from orders 
inner join cargo 
on orders.cargoid=cargo.id
inner join shippers
on cargo.shippers_id=shippers.id
where not shippers.name = 'MNG'


-- 15-> En az bir adet aynı üründen 10+ sipariş vermiş kullanıcıları ve ürünü listeleyiniz.
select c.name as kullanıcı_adı,p.name as ürün_adı,count(*) as ürün_sayısı from customer c  
inner join orders o
on o.customerid=c.id
inner join products_order po
on o.id=po.orderid
inner join products p
on po.productsid=p.id
group by p.name,c.name
having count(*)>10


-- 16-> Onaylanmamış ödemeleri listeleyiniz.

select py.payment_status,o.id,o.name from sellers s
inner join products_sellers ps
on s.id=ps.sellersid
inner join products p
on ps.productsid=p.id
inner join products_order po
on p.id=po.productsid
inner join orders o
on po.orderid=o.id
inner join payment py
on p.paymentid=p.id
where py.payment_status=false
 

-- 17-> En az 2 farklı ülkede adresi olan kullanıcıları listeleyiniz.

select count(c.name),c.name from customer c
inner join adress a
on c.shipping_adressid=a.id
inner join street s
on a.street_id=s.id
inner join city ci
on s.cityid=ci.id
inner join country co
on co.id=ci.countryid
group by c.name
having count(*)>=2


-- 18-> EN az 2 farklı şehirde adresi olan ve bu adreslere en az 1 adet sipariş vermiş kullanıcıları listeleyiniz.

select  c.name as musteri_adı from city ci
inner join  street s
on s.cityid=s.id
inner join adress a
on s.id=a.street_id
inner join customer c
on a.id=c.shipping_adressid
inner join orders o
on c.id=o.customerid
where o.id is not null
group by c.name

--- 19->Eklenmiş ancak hiç bir siparişte kullanılmamış adresleri listeleyiniz.
select co.name as ülke_adı,ci.name as şehir_adı,s.name as sokak_adı,a.title as adres_başlığı,c.name as müşteri_adı from country co
inner join city ci
on co.id=ci.countryid
inner join  street s
on s.cityid=s.id
inner join adress a
on s.id=a.street_id
inner join customer c
on a.id=c.shipping_adressid
left join orders o
on c.id=o.customerid
where  o.id is null
