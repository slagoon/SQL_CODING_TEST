select count(fish_type) as fish_count,month(time) as month
from fish_info
group by month
having not count(fish_type) is null
order by 2