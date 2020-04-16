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

/* cross join */
select t1.ID as T1ID, t1.Value as T1Value,
 t2.ID as T2ID, t2.Value as T2Value
from table1 t1
cross join table2 t2 ;


/* INNER JOIN on same table*/

create table Employee(
		EmployeeID int primary key,
        Name nvarchar(50),
        ManagerId int
        );
      
        
insert into employee
select 1,'mike',3
union all
select 2,'david',3
union all
select 3,'roger',null
union all
select 4,'marry',2
union all
select 5,'joseph',2
union all
select 7,'ben',2;

select * from employee;

select e1.Name EployeeName, e2.name ManagerName
from employee e1
inner join employee e2
on e1.ManagerId = e2.EmployeeID;

select e1.Name EployeeName, ifnull(e2.name ,'Top Manager' ) as ManagerName
from employee e1
left join employee e2
on e1.ManagerId = e2.EmployeeID;

/* natural join returns 
the identical rows of both tables
canbe used as inner or outer join
*/

create table natural1(
		ID int ,
        Value nvarchar(10)
        );
      
        
insert into natural1 (ID , Value)
select 1,'first'
union all
select 2,'second'
union all
select 3,'third'
union all
select 4,'fourth'
union all
select 5,'fifth';

create table natural2(
		ID int ,
        Value nvarchar(10)
        );
      
        
insert into natural2 (ID , Value)
select 1,'first'
union all
select 2,'second'
union all
select 3,'third'
union all
select 6,'sixth'
union all
select 7,'seventh'
union all
select 8,'eight';

drop table natural1 ;
drop table natural2 ;

/*natural inner join*/

select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
natural join natural2 t2;

/*outer inner join*/

select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
inner join natural2 t2 on t1.ID = t2.ID;
/* same as */
select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
natural join natural2 t2;

/* outer join */

select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
left join natural2 t2 on t1.ID = t2.ID;
/* same as */
select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
natural left join natural2 t2 ;

/* 'using' key word */
/* iiner join */
select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
inner join natural2 t2 on t1.ID = t2.ID;
/* saame as */
select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
inner join natural2 t2 using (ID);

/*outer inner join*/

select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
left join natural2 t2 on t1.ID = t2.ID;
/* same as */
select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
left join natural2 t2 using (ID);

/* outer join */

select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
left join natural2 t2 on t1.ID = t2.ID and t1.Value = t2.Value ;
/* same as */
select t1.ID as T1IID, t1.Value as T1Value,
	   t2.ID as T2IID, t2.Value as T2Value
from natural1 t1
 left join natural2 t2  using (ID , VALUE);

