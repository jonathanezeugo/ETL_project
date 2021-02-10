drop table AreaOperators

--create table
create table AreaOperators
(
	area_name varchar,
	operator varchar,
	op_abbr varchar)

--delete nulls
delete
from AreaOperators
where (area_name is null)

--select all
select * from AreaOperators