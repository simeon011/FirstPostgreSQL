select 
	c.country_name,
	r.river_name
from 
	countries as c
left join 
	countries_rivers as cr on c.country_code = cr.country_code
left join 
	rivers as r on r.id = cr.river_id
where
	c.continent_code = 'AF'
order by 
	c.country_name
limit 
5;
