/*
a view is a commonly known as a virtual table
it is a result of a select statment that stored as an object in the db

thetables referenced in the view called as base table
views do not store any data at run time view retrive the data from the base table

myaql supports nested views
myaql do not supports materialiesed views

-- Advantages --
** faster
** summerize data from  various tables containing complex logic - simplify tha query
** security - views do not store data only referance to the exsact data the the base table refers
** DML(Data Manipulating Language) views support update insert and delete data (with restrictions) called Updatable Views
*/

-- simple view  
create view vw_AllActors
as
select * from actor;

select * from actor;
select * from vw_AllActors;

select pt.payment_id , cust.first_name, cust.last_name, amount, pt.rental_id
from payment pt
inner join customer cust on cust.customer_id = pt.customer_id
where amount < 
				(select avg(amount)
                 from payment pt1
                 where pt1.customer_id = pt.customer_id);

create view vw_castPayment
as 				
select pt.payment_id , cust.first_name, cust.last_name, amount, pt.rental_id
from payment pt
inner join customer cust on cust.customer_id = pt.customer_id
where amount < 
				(select avg(amount)
                 from payment pt1
                 where pt1.customer_id = pt.customer_id);
                 
select * from vw_castPayment;

select * from vw_castPayment
inner join rental r on r.rental_id = vw_castPayment.rental_id;