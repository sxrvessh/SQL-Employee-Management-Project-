CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE,
    order_amount DECIMAL(10, 2),
    payment_method VARCHAR(20),
    status VARCHAR(20)
);
INSERT INTO orders (order_id, customer_id, order_date, order_amount, payment_method, status) VALUES
(101, 'C001', '2023-07-01', 250.00, 'Credit Card', 'Delivered'),
(102, 'C002', '2023-07-03', 480.00, 'PayPal', 'Cancelled'),
(103, 'C001', '2023-07-05', 150.00, 'Cash', 'Delivered'),
(104, 'C003', '2023-07-07', 320.00, 'Credit Card', 'Delivered'),
(105, 'C002', '2023-07-10', 200.00, 'PayPal', 'Delivered'),
(106, 'C004', '2023-07-12', 500.00, 'Credit Card', 'Returned'),
(107, 'C001', '2023-07-15', 100.00, 'Credit Card', 'Delivered'),
(108, 'C004', '2023-07-18', 600.00, 'Cash', 'Delivered'),
(109, 'C005', '2023-07-20', 700.00, 'PayPal', 'Delivered'),
(110, 'C003', '2023-07-21', 400.00, 'Credit Card', 'Delivered');
select * from orders;

select  
sum(order_amount) as total_orders from orders where status='Delivered';
select * from orders;
select payment_method,
count(order_amount) as total_orders from orders group by payment_method;
select * from orders;
select customer_id ,
sum(order_amount) as total_order_amount from orders group by customer_id order by total_order_amount desc;
select * from orders;
select status ,
count(status) as currentstatus from orders where status in('delivered','cancelled')
group by status;
select *from orders;
select * from orders;
select customer_id,
count(*) as order_count
from orders group by customer_id having COUNT(*)>1;
select * from orders;
select status,
avg(order_amount) as avgamount from orders group by status;
SELECT payment_method, ROUND(AVG(order_amount), 2) AS avg_order_amount
FROM orders
GROUP BY payment_method;
select * from orders where order_amount>400;
select payment_method,
sum(order_amount) as cash from orders where payment_method='cash' group by payment_method;
select status ,
count(*) as order_count from orders group by status;
select * from orders;


select order_id,
customer_id,
order_date,
order_amount,
payment_method,
status,
case when order_amount > 500 then 'HIGH'
when order_amount between 200 and 500 then 'MEDIUM'
else 'LOW' end as order_size from orders;
