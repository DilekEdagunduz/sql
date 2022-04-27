
select * from Products where UnitPrice > 20
-- a ile başlıyo
select * from Products where ProductName like 'a%'
-- a ile bitiyo
select * from Products where ProductName like '%a'
-- a ile geçenlerin listesi
select * from Products where ProductName like '%a%'

select * from Products where UnitPrice > 20 and UnitsInStock > 10

-- ürün isimleri 
select ProductName, CategoryID, UnitPrice from Products where ProductName like '%e%' and CategoryID = 3

--insert işlemi
insert into Categories(CategoryName, [Description])
values('Electronic', 'Electronic products')

select * from Products order by ProductName

-- Ürünleri ada göre sırala
select * from Products order by ProductName

--ürünleri ada göre tersten sırala
select * from Products order by ProductName desc

select (UnitPrice * 10) from Products

select CompanyName + ' ' + ContactName from Suppliers

--sql sorular


--Supplierları ad sırasına göre (A-Z) listele companyName
select * from Suppliers order by companyName

--Supplierları ad sırasına göre tersten listele (Z-A) companyName
select *from Suppliers order by CompanyName desc

--Ülkesi si UK olan supplierları listele 
select * from Suppliers Where Country='UK'

--Ülkesi si UK olan supplierları listele  (A-Z) 
select * from Suppliers Where Country='UK' order by companyName

--Fiyatı 30 dan büyük kaç ürün var? ( COUNT(*) )
select * from Products Where UnitPrice>30

--Ürünlerin adını tamamen küçültüp fiyat sırasına göre tersten listele 
select lower(ProductName) from products order by UnitPrice desc

--CompanyName ‘a’ harfi ile başlayan supplierların sadece adını ekrana yaz 
select * from Suppliers Where CompanyName like 'a%'

--İsmi a harfi ile başlayan VE fiyatı 20 den büyük eşit ürünleri isme göre listele 
select * from Products Where ProductName like 'a%' and UnitPrice>10  
 
--Çalışanların ad ve soyadlarını yanyana gelecek şekilde yazdır  ( Employee)
select FirstName + ' ' + LastName from Employees

--Ürünün sadece KDV li fiyatını ekrana yazdır(tek kolon)
select (UnitPrice*1.18) from Products
 
--Region alanı NULL olan kaç tedarikçim var? ( Supplier ) ( İnternetten bakılmalı )
select Count(*) from Suppliers where Region is null

--Null olmayanlar
select Count(*) from Suppliers where Region is not null

--İlk 5 tedarikçimi getir  - supplier
select top 5 * from Suppliers

--İlk 5 tedarikçimi getir. Sadece ID ve CompanyName yazsın - supplier
 select top 5 SupplierID,CompanyName from Suppliers 

--CompanyName e göre ilk 5 tedarikçimi getir ve ekrana sadece isimlerini yaz 
select top 5 CompanyName from Suppliers

--en ucuz 5 ürünü getir
select top 5 *  from Products order by UnitPrice

--En ucuz 5 ürünün ortalama fiyatı nedir? 
select top 5 * from Products order by UnitPrice desc AVG (UnitPrice)

--Ürün adlarının hepsinin soluna TR koy ve büyültüp olarak ekrana yazdır.
select 'TR'+UPPER(ProductName) from Products

﻿--Ürünleri ada göre sırala
select * from Products order by ProductName

--Ürünleri ada göre tersten sırala
select * from Products order by ProductName desc

--Ürün adı, fiyatı ve kdv ekrana yazdır
select ProductName,(UnitPrice*1.18) from Products 

--Fiyatı 20den küçük ürünlerin adının başına TR ekle
select 'TR' + ProductName from Products Where UnitPrice<20