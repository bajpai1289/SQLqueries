select * from customers limit 3;

select * from customers limit 6,3;

-- supply top 3 loyal customer with more points than anyone else
select *
from customers
order by points desc
limit 3;