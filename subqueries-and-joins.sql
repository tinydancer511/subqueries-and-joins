--#1
select * from customer;
select * from address;
select first_name, last_name, district 
from customer 
full join address 
on customer.address_id = address.address_id 
where district like 'Texas';

--#2
select amount,payment,first_name,last_name
from customer 
full join payment 
on payment.customer_id = payment.payment_id 
where amount < 6.99;

--#3
select * 
from customer
where customer_id IN(
	select customer_id 
	from payment
	group by customer_id 
	having sum(amount) > 175
	order by sum(amount)
);

--#4
select * from city where city like 'Nepal';

--#6
select distinct rating, count(*) film from film group by rating;

--#7
select *  
from customer
where customer_id IN(
	select customer_id 
	from payment
	where amount > 6.99
);

--#8
select * from rental ;
select * from payment ;
select amount from payment where amount < 0.00;
