SELECT 
	a.name, 
	to_char(a.birthdate::DATE, 'YYYY'), 
	ant.animal_type
FROM 
	animals as a
left join 
	owners as o
on 
	a.owner_id = o.id
join 
	animal_types as ant
on 
	a.animal_type_id = ant.id
WHERE 
	a.owner_id IS NULL
	AND 
	ant.animal_type <> 'Birds'
	AND
	a.birthdate >  DATE'01/01/2017'
ORDER BY 
	a.name ASC;