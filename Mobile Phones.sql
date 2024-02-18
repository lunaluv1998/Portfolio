#create schema ayanacannon;
use ayanacannon;
select * from mobile;
#Q1. Check mobile features and price list
select phone_name, price from mobile;
#Q2. Find out the price of 5 most expensive phones
select brands from mobile
order by price desc
limit 5;
#Q3. Find out the price of 5 cheapest phones
select * from mobile
order by price asc
limit 5;
#Q4. List top 5 Samsung phones with price and all features
select * from mobile where brands = "Samsung"
order by price desc
limit 5;
#Q5. Must have android phone list, then top 5 most expensive android phones
select * from mobile where operating_system_type = "Android"
order by price desc
limit 5;
#Q6. Must have android phone list, then 5 cheapest android phones
select * from mobile where operating_system_type = "Android"
order by price asc
limit 5;
#Q7. Must have IOS phone listen, and top 5 most expensive IOS phones
select * from mobile where operating_system_type = "IOS"
order by price desc
limit 5;
#Q8. Must have IOS phone list then 5 cheapest IOS phones
select * from mobile where operating_system_type = "IOS"
order by price asc
limit 5;
#Q9. Write a query that shows which phone supplies 5G and the top 5 phones with 5G support
select * from mobile where 5G_Availability = "Yes"
order by price desc
limit 5;
#Q10. Total price of all mobiles with brand names
select brands, sum(price) as Total_Price from mobile group by brands;
