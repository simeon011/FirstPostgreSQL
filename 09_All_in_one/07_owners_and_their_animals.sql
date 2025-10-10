SELECT
	o.name,
	COUNT(o.id) as count_of_animals
FROM 
	owners as o
JOIN
	animals as a 
on 
	a.owner_id = o.id
GROUP BY
	o.name
order by
	count_of_animals DESC,
	o.name
LIMIT 
	5;