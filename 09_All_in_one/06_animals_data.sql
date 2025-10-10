SELECT 
	a.name, 
	an.animal_type,
	to_char(a.birthdate, 'DD.MM.YYYY') as birthdate
FROM 
	animals as a
JOIN 
	animal_types AS an 
ON 
	a.animal_type_id = an.id
ORDER BY 
	a.name ASC;