drop table WellOperator_Simple

--create table
create table WellOperator_Simple
(
	operator varchar,
	op_id int)

--select all
select * from WellOperator_Simple

--delete nulls
delete
from WellOperator_Simple
where (operator is null)

select * from WellOperator_Simple