SELECT	
	peak_name,
	RIGHT(peak_name, 4) as positive_left, 
	RIGHT(peak_name, - 4) as negative_left
	
FROM 
	peaks;