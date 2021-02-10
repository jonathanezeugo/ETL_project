drop table AreaOperatorsSimple

--create table
create table AreaOperatorsSimple
(
	Operator varchar,
	OP_ABBR varchar,
	Index3 int)
	
--select all	
select * from AreaOperatorsSimple

--delete nulls
delete
from AreaOperatorsSimple
where (operator is null)

select * from AreaOperatorsSimple