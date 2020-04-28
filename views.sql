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

/*
DML amd Restriction*/
create view DML_Operation
as
select language_id , name, last_update
from language;

select * from DML_Operation;

/*
insert update and delete are possible in a view 
delete is possible only is there is a single base table

restrictions marked as with check option will upadte insert and delete 
only to the conditions of the view 
***but does not apply to the base table

*/
drop view DML_chack;
create view DML_chack
as 
select language_id, name, last_update
from language lang
where last_update = '2006-02-15 05:02:19'
with check option;

select * from DML_chack;

insert into DML_chack
(name, last_update)
values('hebrew', now());#error 

insert into DML_chack
(name, last_update)
values('hebrew', '2006-02-15 05:02:19');#inserten into base table

select language_id, name, last_update
from language lang;




















