/* ASCII returns the numeric left most char */
select ascii('ab'),ascii('A');

/* CHAR returns the chracter for each integer past */
select CHAR(77,85,99);
select CHAR('a');

/* LENGTH */
select LENGTH(';ASO<NUD'),LENGTH(';ASO<NUD  ');

/* concat */
select concat('asd', '--', 'gfr');
select concat('asd', null, 'gfr');##returns null

/* LCCASE lower case */
select lcase('AJNgc');
/* UcASE lower case */
select UCASE('AJNgc');

/* left returs the left most number of characters as specified*/
select left('jfhdggsy' , 4);
/* right returs the right most number of characters as specified*/
select right('jfhdggsy' , 4);

/* rtrim removes after spaces */
select rtrim('   abjs'),length(rtrim('   abjs')),rtrim('kjhdf   '), length(rtrim('kjhdf   '));

/* ltrim removes before spaces */
select ltrim('   abjs'),length(ltrim('   abjs')),ltrim('kjhdf   '), length(ltrim('kjhdf   '));

/* trim removes before and after spaces */
select trim('   abjs'),length(trim('   abjs')),trim('kjhdf   '), length(trim('kjhdf   '));

/* strcmp compare the 2 strinngs 
if equal returns 0
if left arg is smallest then right arg returns -1
if left arg is larger then right arg returns 1
(like spaceship operator in php)
 */
 
 select strcmp('a23', 'a34');## -1
 select strcmp('a23', 'a12');## 1
 select strcmp('a23', 'a23');## 0

/* reverse  */
select reverse('123456789');



























































