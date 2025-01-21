select id, length
from fish_info
where length > 10 and not length is null
order by length desc, 1 ASC
limit 10