CREATE OR REPLACE PROCEDURE sp_animals_with_owners_or_not(
	animal_name VARCHAR(30)
)
AS
$$
	DECLARE 
		owner_name VARCHAR(30);
	BEGIN
		SELECT
			o.name
		INTO
			owner_name
		FROM 
			owners as o
		JOIN 
			animals as a
		ON 
			o.id = a.owner_id
		WHERE
			a.name = animal_name;

		IF owner_name IS NULL THEN
			RAISE NOTICE 'For adoption';
		ELSE
			RAISE NOTICE '%', owner_name;
		END IF;
	END;
$$
LANGUAGE plpgsql;
