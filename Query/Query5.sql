SELECT school_name, emai FROM schools
WHERE EXISTS (SELECT*
			  FROM address
			  WHERE address.address_id = 3
			  AND schools.address_id = 3);