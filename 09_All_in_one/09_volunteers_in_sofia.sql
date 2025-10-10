SELECT 
	v.name,
	v.phone_number,
	REGEXP_REPLACE(address, '\s*Sofia[\s,]*', '', 'gi') AS address
FROM
	volunteers as v
JOIN 
	volunteers_departments as vd
ON 
	v.department_id = vd.id
WHERE 	
	vd.department_name = 'Education program assistant'
	AND
	v.address LIKE '%Sofia%'
ORDER BY 
	v.name ASC