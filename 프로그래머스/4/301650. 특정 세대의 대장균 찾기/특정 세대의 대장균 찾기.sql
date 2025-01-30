select id
from ecoli_data
where parent_id in ( select id
from ecoli_data
where parent_id in ( select id from ecoli_data where parent_id is null))
order by id



# select e1.id
# from ecoli_data e1
# join ecoli_data e2 on e2.id = e1.parent_id
# join ecoli_data e3 on e3.id = e2.parent_id
# where e3.parent_id is null
# order by 1