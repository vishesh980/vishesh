create database pizza_project;
use pizza_project;
show tables;
select * from pizza_sales;


select cast(sum(total_price) as decimal (10,2))  as total_revenue from pizza_sales;


select cast((sum(total_price)/count(distinct order_id))
	   as decimal(10,2)) as avg_order_value from pizza_sales; 


select count(distinct order_id)  as total_orders from pizza_sales;


select cast((sum(quantity)/count(distinct order_id)) as decimal(10,2)) 
       as avg_quantity_per_order from pizza_sales;


select dayname(str_to_date(order_date, '%Y-%m-%d')) 
as order_day,count(distinct order_id) 
       as total_order from pizza_sales
       group by dayname(str_to_date(order_date, '%Y-%m-%d'));


select monthname(str_to_date(order_date, '%Y-%m-%d')) as month_name,
  count(distinct order_id) as total_orders
from pizza_sales group by   monthname(str_to_date(order_date, '%Y-%m-%d'))
order by total_orders DESC;


select pizza_category ,cast(sum(total_price)*100/ (select sum(total_price) 
from pizza_sales)as decimal(10,2)) as avg_rev_cat from pizza_sales 
 group by pizza_category;


 select pizza_category ,cast(sum(total_price)*100/ (select sum(total_price) 
from pizza_sales)as decimal(10,2)) as avg_rev_cat from pizza_sales 
 group by pizza_category;



 select pizza_category ,cast(sum(total_price)*100/ (select sum(total_price) 
from pizza_sales)as decimal(10,2)) as avg_rev_cat from pizza_sales 
 group by pizza_category;
 
 
 select pizza_size ,cast(sum(total_price)*100/ (select sum(total_price) 
from pizza_sales)as decimal(10,2)) as avg_rev_cat from pizza_sales 
 group by pizza_size;


 create view top_5_pizza as 
 select  pizza_name, sum(total_price) as tot_rev from pizza_sales
 group by pizza_name order by tot_rev desc limit 5 ;

 create view bottom_5_pizza as
 select  pizza_name, sum(total_price) as tot_rev from pizza_sales
 group by pizza_name order by tot_rev  limit 5 ;


 select  pizza_name, sum(quantity) as tot_quan from pizza_sales
 group by pizza_name order by tot_quan desc limit 5;


 select  pizza_name, sum(quantity) as tot_quan from pizza_sales
 group by pizza_name order by tot_quan limit 5;


 select  pizza_name, count(order_id) as tot_ord from pizza_sales
 group by pizza_name order by tot_ord desc limit 5;


 
 select  pizza_name, count(order_id) as tot_ord from pizza_sales
 group by pizza_name order by tot_ord limit 5;
 
 
 
 



 
 



 
 



 