use sakila;

create table ActorSample(
	actor_id smallint(5) unsigned not null auto_increment,
    first_name varchar(45)  not null,
    last_name varchar(45) null,
	last_update timestamp not null default current_timestamp
		on update current_timestamp,
	primary key (actor_id)
);

insert into sakila.actorsample (first_name,last_name ,last_update)
select first_name,last_name ,last_update
from sakila.actor;

delete
from sakila.actorsample
where actor_id = 1;

delete
from sakila.actorsample
where actor_id  in (3,6,5,4);

delete
from sakila.actorsample
where actor_id in (select actor_id
					from film_actor
					where film_id = 1);

delete
from sakila.actorsample;





