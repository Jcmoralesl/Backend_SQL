-- punto 1
SELECT * FROM actor WHERE first_name='Julia'

-- punto 2

SELECT * FROM actor WHERE first_name='Chris' OR first_name='Cameron' OR first_name='Cuba'

-- punto 3

SELECT * FROM customer WHERE first_name='Jamie' AND last_name='Rice'

-- punto 4 

SELECT * FROM payment; --para visualizar la tabla

SELECT amount,payment_date FROM payment WHERE amount < 1; 

-- punto 5 

SELECT * FROM rental; -- para visualizar la tabla

SELECT customer_id FROM rental ORDER BY return_date LIMIT 3;

-- punto 6

SELECT * FROM film; -- para visualizar la tabla

SELECT rating,COUNT(rating) FROM film WHERE rating ='PG' or rating='PG-13' or rating ='NC-17'GROUP BY rating;


