CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(
	searched_volunteers_department VARCHAR(30)
)RETURNS INT 
AS
$$
	DECLARE	
		num_of_department INT;
	BEGIN
		SELECT 
			COUNT(*)
		INTO 
			num_of_department
		FROM 
			volunteers AS v
		JOIN 
			volunteers_departments AS vd
		ON 
			v.department_id = vd.id
		WHERE
			vd.department_name = searched_volunteers_department;
		RETURN num_of_department;
	END;
$$
LANGUAGE plpgsql;