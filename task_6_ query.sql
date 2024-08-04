select * from customer

select * from product

select * from sales

select * from sales as s inner join product as p on s.product_id = p. product_id

select s.sales as "total_sales" , s.quantity as "sales_quantity" , s.discount as "sales_discount",
p.category as "product_category" , p.sub_category as "product_sub_category"
from sales as s 
right join product as p
on s.product_id = p. product_id


select p.category as "product_category" , p.sub_category as "product_sub_category" ,
s.sales as "total_sales" , s.quantity as "sales_quantity" , s.discount as "sales_discount"
from product as p
right join sales as s
on p. product_id = s.product_id

select s.sales as "total_sales" , s.quantity as "sales_quantity" , s.discount as "sales_discount",
p.category as "product_category" , p.sub_category as "product_sub_category"
from sales as s 
left join product as p
on s.product_id = p. product_id

select p.category as "product_category" , p.sub_category as "product_sub_category" ,
s.sales as "total_sales" , s.quantity as "sales_quantity" , s.discount as "sales_discount"
from product as p
left join sales as s
on p. product_id = s.product_id

select * from customer as c inner join sales as s on c.customer_id = s. customer_id

select c.segment as "customer_segment", c.age as "customer_age" , c.city as customer_city, 
c.state as "customer_state" , s.order_id as "sales_order_id" , s.order_date as "sales_order_date"
from customer as c left join sales as s on c.customer_id = s . customer_id

select s.order_id as "sales_order_id" , s.order_date as "sales_order_date" , 
c.segment as "customer_segment", c.age as "customer_age" , c.city as customer_city, 
c.state as "customer_state" from sales as s left join customer as  c on  s.customer_id = c.customer_id

select c.segment as "customer_segment", c.age as "customer_age" , c.city as customer_city, 
c.state as "customer_state" , s.order_id as "sales_order_id" , s.order_date as "sales_order_date"
from customer as c full join sales as s on c.customer_id = s . customer_id

select c.customer_id, c.customer_name, c.age,
s.order_id, s.ship_mode, s.product_id, s.quantity,p.product_name   
from customer as c join sales as s on s.customer_id = c.customer_id
join product as p on p.product_id = s.product_id
