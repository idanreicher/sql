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
    values ('Pinal','dave', '2013-04-25');
    
insert into sakila.actorsample 
values (default,'jdu','zf z',  '2013-04-25');

insert into sakila.actorsample (first_name,last_name )
    values ('Pinal','dave');
    
    
insert into sakila.actorsample (first_name)
    values ('Pinal');
    
insert into sakila.actorsample (first_name,last_name ,last_update)
    values ('Pinal',null, default);
    
 
insert into sakila.actorsample (first_name,last_name ,last_update)
    values ('Pinadfl','dave', '2013-04-25'),
			('Pinafdl','dfdszave', '2013-04-25'),
			('Pizsdal','dadzsve', '2013-04-25');

insert into sakila.actorsample (first_name,last_name ,last_update)
select first_name,last_name ,last_update
from actor
where first_name = 'nick';


insert into sakila.actorsample (first_name,last_name ,last_update)
select first_name,last_name ,last_update
from sakila.actor;






