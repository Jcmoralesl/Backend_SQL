-- punto 1: Selecciona las columnas film_id y title de la tabla film.
SELECT film_id,title FROM film;

-- punto 2: Selecciona 5 filas de la tabla film, obteniendo todas las columnas.
SELECT * FROM film Limit 5;

-- punto 3: Selecciona filas de la tabla film donde film_id sea menor que 4.
SELECT * FROM film WHERE film_id < 4;

-- punto 4: Selecciona filas de la tabla film donde el rating sea PG o G.
SELECT * FROM film WHERE rating='PG' OR rating='G'

-- punto 5: Selecciona filas de la tabla actor donde el nombre sea Angela, Angelina o Audrey usando IN.
SELECT * FROM actor WHERE first_name IN ('Angela','Angelina','Audrey');

-- punto 6: Obtén una lista de actores con el nombre Julia.
SELECT * FROM actor WHERE first_name='Julia'

-- punto 7: Obtén una lista de actores con los nombres Chris, Cameron o Cuba.

SELECT * FROM actor WHERE first_name='Chris' OR first_name='Cameron' OR first_name='Cuba'

-- punto 8: Selecciona la fila de la tabla customer para el cliente con el nombre Jamie Rice.

SELECT * FROM customer WHERE first_name='Jamie' AND last_name='Rice'

-- punto 9: Selecciona el monto y la fecha de pago de la tabla payment donde el monto pagado sea menor a $1.

SELECT * FROM payment; --para visualizar la tabla

SELECT amount,payment_date FROM payment WHERE amount < 1; 

-- punto 10: ¿Cuáles son las diferentes duraciones de alquiler permitidas por la tienda?
SELECT DISTINCT rental_duration FROM film;

-- punto 11: Ordena las filas en la tabla city por country_id y luego por city.
SELECT * FROM city;

SELECT country_id,city FROM city ORDER BY country_id,city;

-- punto 12: ¿Cuáles son los ID de los últimos 3 clientes que devolvieron un alquiler?

SELECT * FROM rental; -- para visualizar la tabla

SELECT customer_id FROM rental ORDER BY return_date LIMIT 3;

-- punto 13: ¿Cuántas películas tienen clasificación NC-17? ¿Cuántas tienen clasificación PG o PG-13?

SELECT * FROM film; -- para visualizar la tabla

SELECT rating,COUNT(rating) FROM film WHERE rating ='PG' or rating='PG-13' or rating ='NC-17'GROUP BY rating;

-- punto 14: ¿Cuántos clientes diferentes tienen registros en la tabla rental?
SELECT * FROM rental;

SELECT customer_id,COUNT(customer_id) FROM rental GROUP BY customer_id ORDER BY customer_id;

--punto 15: ¿Hay algún cliente con el mismo apellido?
SELECT * FROM customer;
SELECT last_name,COUNT(*) FROM customer GROUP BY last_name HAVING COUNT (*) >1;

-- punto 16: ¿Qué película (id) tiene la mayor cantidad de actores?
SELECT * FROM film_actor

SELECT film_id, COUNT(*) AS cantidad_actores FROM film_actor GROUP BY film_id ORDER BY cantidad_actores DESC;

-- punto 17: ¿Qué actor (id) aparece en la mayor cantidad de películas?

SELECT actor_id, COUNT (*) AS cantidad_peliculas FROM film_actor GROUP BY actor_id ORDER BY cantidad_peliculas DESC;

-- punto 18: Cuenta el número de ciudades para cada country_id en la tabla city. Ordena los resultados por count(*).
SELECT * FROM city;

SELECT country_id, COUNT (*) AS numero_ciudades FROM city GROUP BY country_id ORDER BY COUNT (*) DESC;

-- punto 19: ¿Cuál es la tarifa de alquiler promedio de las películas? ¿Puedes redondear el resultado a 2 decimales?
SELECT * FROM payment

SELECT ROUND(AVG(amount), 2) AS tarifa_alquiler_promedio FROM payment;

--punto 20: Selecciona los 10 actores que tienen los nombres más largos (nombre y apellido combinados).

SELECT CONCAT (first_name, '', last_name) AS nombre_completo FROM actor ORDER BY LENGTH(first_name) + LENGTH(last_name) DESC LIMIT 10;