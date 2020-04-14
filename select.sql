USE sakila;
select * from sakila.actor
order by first_name desc;

select first_name , last_name
from sakila.actor
order by last_name asc;

select * from sakila.actor
where actor_id <  100;

select first_name , last_name 
from sakila.actor
where actor_id >  100
order by first_name , last_name desc;


select * from sakila.actor
where 1 = 2;

select rental_date, inventory_id , return_date
from sakila.rental;

select rental_date as RD,
 inventory_id as II,
 return_date as RD3
from sakila.rental;

select replacement_cost - rental_rate as CostDiff,
		film_id as FilmId,
        length/60 as TimeInHour
        from sakila.film;

select replacement_cost as ReplacementCost,
		replacement_cost  / 5 as decimalR,
        replacement_cost  div 5 as IntegerI,
        replacement_cost  % 5 as modulusR
	from sakila.film;
		
select amount,
	   round(amount) amnt ,
       round(amount , 1) amnt,
       floor(amount ) Flooramnt,
       ceiling(amount ) ceilamnt
	from sakila.payment;

select concat(first_name, ' ', last_name) as FullName,
		length(concat(first_name , 2 ,' ' , last_name , 2) ) as FullNamelENGHT,
		concat(left(first_name , 2) ,' ' , left(last_name , 2)) as FullNameInitials,
        reverse(concat(left(first_name , 2) ,' ' , left(last_name , 2))) as ReversName,
        replace(concat(first_name  ,' ' ,last_name ) , 'S' , '#') as ReplaceName
    from sakila.actor;

select concat(first_name, ' ', last_name) as FullName,
		date_format(last_update , '%m/%d/%y' ) as lastUpdated1,
        date_format(last_update , '%m-%d-%Y' ) as lastUpdated2,
        date_format(last_update , '%d %b %Y %T:%f' ) as lastUpdated3
    from sakila.actor;

select concat(first_name, ' ', last_name) as FullName,
		date_format(last_update , GET_FORMAT(DATETIME , 'EUR' )) as lastUpdated1,
        date_format(last_update , GET_FORMAT(DATETIME , 'ISO' )) as lastUpdated2,
        date_format(last_update , GET_FORMAT(DATETIME , 'USA' )) as lastUpdated3
    from sakila.actor;

select concat(first_name, ' ', last_name) as FullName,
		date_format(last_update , GET_FORMAT(DATE , 'EUR' )) as lastUpdated1,
        date_format(last_update , GET_FORMAT(DATE, 'ISO' )) as lastUpdated2,
        date_format(last_update , GET_FORMAT(DATE, 'USA' )) as lastUpdated3
    from sakila.actor;


select rental_date,
		DAyOFWEEK(rental_date) as dayofweek,
        quarter(rental_date) as Quartername,
        week(rental_date) as weekname,
        monthname(rental_date) as monthname
from sakila.rental;



select first_name 
from sakila.actor;

select  distinct first_name , last_name
from sakila.actor;


select actor_id , first_name, last_name
from sakila.actor
where actor_id = 100;


select actor_id , first_name, last_name
from sakila.actor
where first_name = 'Nick';

select actor_id , first_name, last_name
from sakila.actor
where actor_id < 100;

select actor_id , first_name, last_name
from sakila.actor
where first_name < 'Nick';


select actor_id , first_name, last_name
from sakila.actor
where first_name <= 'Nick';

select actor_id , first_name, last_name
from sakila.actor
where actor_id >= 100;

select actor_id , first_name, last_name
from sakila.actor
where actor_id <> 100;

select actor_id , first_name, last_name
from sakila.actor
where first_name != 'Nick';


select * 
from sakila.actor
where first_name = 'ED' 
and actor_id < 100 
or last_name = 'TEMPLE';



select * 
from sakila.actor
where first_name = 'ED' 
or last_name = 'TEMPLE'
and actor_id < 100 ;



select * 
from sakila.actor
where first_name = 'ED' 
and (actor_id < 100 
or last_name = 'TEMPLE');


SELECT * 
FROM sakila.actor
where first_name in ('NICK', 'JOHNNY');


select *
from sakila.actor
where actor_id in(1,5,6,89,4);


select *
from sakila.actor
where actor_id not in(1,5,6,89,4);

SELECT * 
FROM sakila.actor
where first_name in ('NICK', 'JOHNNY')
or actor_id in
				(select actor_id
				 from sakila.actor 
                 where last_name = 'DEGENERES');
                 

SELECT *
FROM sakila.actor
where actor_id between 50 and 60;

SELECT *
FROM sakila.actor
where actor_id between 51 and 59;

SELECT *
FROM sakila.actor
where actor_id not between 50 and 60;

select *
FROM sakila.actor 
where first_name LIke 'A%';

select *
FROM sakila.actor 
where first_name LIke 'AL%';

select *
FROM sakila.actor 
where first_name LIke 'A__E';

select *
FROM sakila.actor 
where first_name LIke 'A__E%';

select *
FROM sakila.actor 
where first_name LIke 'A%E%';


select *
FROM sakila.address 
where address2 is null;


select *
FROM sakila.address 
where address2 is not null;



select *
FROM sakila.address 
order by district asc;

select *
FROM sakila.address 
order by district , postal_code desc;



select concat(first_name, ' ', last_name) as FullName
    from sakila.actor
    order by  concat(first_name, ' ', last_name) ;


select concat(first_name, ' ', last_name) as FullName
    from sakila.actor
    order by  FullName ;
    
select actor_id , concat(first_name, ' ', last_name) as FullName
    from sakila.actor
    order by 2;
    
    select actor_id , concat(first_name, ' ', last_name) as FullName
    from sakila.actor
    order by 1;
    
    
    select actor_id , concat(first_name, ' ', last_name) as FullName
    from sakila.actor
    order by actor_id
    limit 10;
    
    
    select actor_id , concat(first_name, ' ', last_name) as FullName
    from sakila.actor
    order by actor_id
    limit 15, 10;
    
    

  select actor_id , concat(first_name, ' ', last_name) as FullName
    from sakila.actor
    order by actor_id
    limit 25, 5;
    


