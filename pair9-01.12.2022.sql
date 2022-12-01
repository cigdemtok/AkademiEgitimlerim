-- 1-> unit_price tipini değiştirir.
alter table products alter column unit_price 
type numeric

-- 2-> ürün stock miktarı ortalamanın üzerinde olan ürünleri getirir.
select * from products 
where stock>(Select AVG(stock) from products)

-- 3-> Product tablosundaki ürün adı şort olanların stok toplamını getirir.

Select SUM(stock) as "Toplam stok miktarı" from products
where name='ŞORT'

-- 4-> Kategori id 5 olan ürünlerin sayısını getirir

Select COUNT(id) from products
where categoryid=5

-- 4-> product tablosundaki en yüksek fiyatlı ürünü getirir

Select MAX(unit_price) as "En pahalı ürün" from products

-- 5-> Kargo tablosundaki en uygun fiyatlı kargo ücretini getirir

Select MIN(price) as "En ucuz kargo ücreti" from cargo

-- 6->products tablosundaki ürünleri getirir.

Select DISTINCT(name) from products

-- 7-> Aynı kategorideki ürünleri gruplar
Select categoryid as "Kategori adı",COUNT(*) as "Ürün sayısı"from products
GROUP BY categoryid

-- 8-> Kategori id ve Ödeme şekli aynı olan ürünleri gruplar
Select categoryid as "Kategori adı", paymentid as "Ödeme şekli",
COUNT(*) as "Ürün sayısı" from products
GROUP BY categoryid,paymentid

-- 9->  Kategori id ve Ödeme şekli aynı olan ürün miktarı 1 olan verileri getirir.

Select categoryid as "Kategori adı", paymentid as "Ödeme şekli",
COUNT(*) as "Ürün sayısı" from products
GROUP BY categoryid,paymentid
HAVING COUNT(*)=1

-- 10->müşterilerin adres dağılımını gruplar.

select count(*) as adres_sayısı, title  from  adress
group by title
having count(*)=1

-- 11-> Ürünleri renklerine göre gruplar

select count(*) as renk_sayısı, p.name ,c.name  from products p
inner join products_colour pc
on p.id=pc.productsid
inner join colour c
on pc.colourid=c.id
group by c.name,p.name

-- 12-> Ürünleri altkategorilerine göre gruplar

select c.subcategoryid,p.name, s.name from products p
inner join categories c
on p.categoryid= c.id
inner join subcategory s
on c.subcategoryid=s.id
group by c.subcategoryid,p.name,s.name

-- 13->kategorilerin kaç adet altkategorisi olduğunu bulur.

select c.name, Count(sc.id) as altkategori_sayisi from categories c
inner join subcategory sc
on c.subcategoryid=sc.id
group by c.name

-- 14-> Ödeme tipi seçilmeyen ürünleri getirir.

select * from products p
full join payment py
on p.paymentid=py.id
where description is  null

-- 15-> İndirimli ürünleri getirir.

select * from products p
full join payment py
on p.paymentid=py.id
where discount_couponid is not null

