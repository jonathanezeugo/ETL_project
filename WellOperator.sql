drop table WellOperator

--create table
create table WellOperator
(
	well_name varchar,
	operator varchar)
	
--delete nulls
delete
from WellOperator
where (well_name is null)

--final table
select * from WellOperator