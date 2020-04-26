/* cast or convert */
select 1-2;

select cast(1-2 as unsigned);# 18446744073709551615
select cast(1-2 as signed);
select cast(18446744073709551615 as signed);# -1

select convert('2013-06-19 14:47:08',DATE) as date1,
 convert('13-06-19 14:47:08',DATE)as date2,
 convert('20130619',DATE)as date,
 convert('130619',DATE)as date4;
 
 select convert('14:47:08', TIME) as t1,
 convert('144708', TIME) as t2;
 
 select convert('11.1', DECIMAL(4,2)) as DEC1