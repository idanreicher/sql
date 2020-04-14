use sakila;

update sakila.actorsample
set first_name = 'fads'
where actor_id = 1;
update sakila.actorsample
set last_name = 'fads'
where actor_id = 1;

update sakila.actorsample
set first_name = 'fads' , last_name = 'fads'
where actor_id = 2;

update sakila.actorsample
set first_name = 'fads' , last_name = 'fads'
where actor_id in (2 , 6,5);

update sakila.actorsample
set first_name = 'idan' 
where actor_id in (
		select actor_id
        from film_actor
        where film_id = 1);


drop table actorsample;





