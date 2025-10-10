SELECT
	CONCAT(o.name, ' - ', a.name),
	o.phone_number, 
	c.id
FROM 
	owners as o
JOIN
	animals as a
on 
	a.owner_id = o.id
join 
	animal_types as ant
on 
	a.animal_type_id = ant.id
JOIN 
    animals_cages AS ac
    ON a.id = ac.animal_id
join 
	cages as c
on 
	ac.cage_id = c.id
where 
	ant.animal_type = 'Mammals'
ORDER BY 
	o.name ASC,
	a.name DESC;