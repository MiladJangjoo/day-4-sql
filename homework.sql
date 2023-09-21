CREATE OR REPLACE function subtract(num1 integer, num2 integer) RETURNS integer
language  plpgsql AS $$
	BEGIN 
		RETURN num1 - num2;	
	END
	$$;

SELECT subtract (10,11);


CREATE OR REPLACE PROCEDURE updatedate(
	_rental_id INTEGER, 
	_customer_id INTEGER
) LANGUAGE plpgsql AS $$
	BEGIN
		UPDATE rental
		SET return_date = NOW()
		WHERE rental_id = _rental_id AND customer_id = _customer_id;
		COMMIT;
	END
$$;

CALL updatedate(12222, 22);