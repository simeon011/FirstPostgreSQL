CREATE VIEW view_continents_countries_currencies_details AS
SELECT 
	CONCAT(c.continent_name, ': ', c.continent_code) as continent_details, 
	CONCAT_WS(' - ', co.country_name, co.capital, co.area_in_sq_km, 'km2') as country_information, 
	CONCAT(cu.description,' ', '(', cu.currency_code, ')') as currencies
FROM 
	continents AS c
JOIN 
    countries AS co ON c.continent_code = co.continent_code
JOIN 
    currencies AS cu ON cu.currency_code = co.currency_code
ORDER BY 
    country_information ASC,
    currencies ASC;