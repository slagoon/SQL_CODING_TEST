select a.dept_id, a.dept_name_en, round(avg(sal),0) as avg_sal
from HR_DEPARTMENT as a join HR_EMPLOYEES as b
on a.dept_id = b.dept_id
group by a.dept_id
order by 3 desc