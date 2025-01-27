with max_ecoli as (select year(DIFFERENTIATION_DATE) as year, max(size_of_colony) as max_size from ecoli_data group by year(DIFFERENTIATION_DATE))

select year(DIFFERENTIATION_DATE) as year , (b.max_size - a.SIZE_OF_COLONY) as YEAR_DEV, a.id
from ecoli_data as a join max_ecoli as b on year(a.DIFFERENTIATION_DATE) = b.year
WHERE YEAR(a.DIFFERENTIATION_DATE) = b.YEAR
ORDER BY 1, 2