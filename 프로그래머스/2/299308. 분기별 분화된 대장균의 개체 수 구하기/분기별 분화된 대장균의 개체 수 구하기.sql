select quarter, count(id) as ecoli_count
from(select *, case when month(DIFFERENTIATION_DATE) between 1 and 3 then '1Q'
            when month(DIFFERENTIATION_DATE) between 4 and 6 then '2Q'
            when month(DIFFERENTIATION_DATE) between 7 and 9 then '3Q'
            else '4Q' end as quarter
            from ecoli_data) as ed
group by quarter
order by quarter