drop table Areas_GISObjects

--create table
create table Areas_GISObjects
(
	index int,
	area_name varchar,
	objectid numeric,
	surface_area numeric,
	perimeter numeric,
	operator_index3 int,
	contract_index2 int)

--delete nulls
delete
from Areas_GISObjects
where (index is null)

--select all
select * from Areas_GISObjects