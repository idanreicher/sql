select RAND() AS rndomNNUM;## floating point between 0 - 1
select RAND()*10 AS rndomNNUM;## floating point between 1 - 9
select ceiling(RAND()*10) AS rndomNNUM;## number between 1 - 10
select left(ceiling(RAND()*10),1) AS rndomNNUM;## number between 1 - 9

select now();
select sleep(2);
select now();

select uuid();# unique id
select uuid_short();# unique id