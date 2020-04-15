create table table1
(ID INT, Value varchar(10));
insert into table1(ID , Value)
select 1, 'First'
union all
select 2, 'Second'
union all
select 3, 'Third'
union all
select 4, 'Forth'
union all
select 5, 'Fifth';


create table table2
(ID INT, Value varchar(10));
insert into table2(ID , Value)
select 1, 'First'
union all
select 2, 'Second'
union all
select 3, 'Third'
union all
select 6, 'Sixth'
union all
select 7, 'Seventh'
union all
select 8, 'Eighth';

select t1.*, t2.*
from table1 t1
inner join table2 t2 on t1.ID = t2.ID;

select t1.ID as T1ID, t1.Value as T1Value,
 t2.ID as T2ID, t2.Value as T2Value
from table1 t1
inner join table2 t2 on t1.ID = t2.ID;

select t1.ID as T1ID, t1.Value as T1Value,
 t2.ID as T2ID, t2.Value as T2Value
from table1 t1
left join table2 t2 on t1.ID = t2.ID;

select t1.ID as T1ID, t1.Value as T1Value,
 t2.ID as T2ID, t2.Value as T2Value
from table1 t1
right join table2 t2 on t1.ID = t2.ID;


/* no outer join in mysql 
	so we unite left and right join with union
*/
select t1.ID as T1ID, t1.Value as T1Value,
 t2.ID as T2ID, t2.Value as T2Value
from table1 t1
left join table2 t2 on t1.ID = t2.ID
union
select t1.ID as T1ID, t1.Value as T1Value,
 t2.ID as T2ID, t2.Value as T2Value
from table1 t1
right join table2 t2 on t1.ID = t2.ID;

/* cross join*/
select t1.ID as T1ID, t1.Value as T1Value,
 t2.ID as T2ID, t2.Value as T2Value
from table1 t1
cross join table2 t2 ;





