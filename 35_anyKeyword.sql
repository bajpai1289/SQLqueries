SELECT *
from  clients 
where client_id in(
    select client_id
    from invoices
    group by client_id
    HAVING count(*)>=2
);

-- can be wriiten as 
SELECT *
from  clients 
where client_id = ANY(
	select client_id
	from invoices
	group by client_id
	HAVING count(*)>=2
);