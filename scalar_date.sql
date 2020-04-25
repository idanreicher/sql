 /* adddate or date_add */
 select adddate(current_date(), interval 5 day);
 select date_add(current_date(), interval 5 day);
 /* subdate  date_sub*/
  select subdate(current_date(), interval 5 day);
  select date_sub(current_date(), interval 5 day);
/* curent_date  current_time */
select curdate(),current_date(),current_date;
select curtime(),current_time(),current_time;

/* timestamp */
select now(), current_timestamp(),current_timestamp;

/* various date & time parts of date time */

select now(),
date(now()),
time(now()),
year(now()),
quarter(now()),
month(now()),
week(now()),
day(now()),
dayname(now()),
hour(now()),
minute(now()),
second(now());

/* date_format */
select date_format(now(), '%W %M %Y');
select date_format(now(), '%d %b %y %T:%f');
select date_format(now(), '%b %d %Y %h:%i %p');

