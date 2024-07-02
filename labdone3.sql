USE sakila;




SELECT 
    c.name AS category_name,
    COUNT(f.film_id) AS film_count
FROM 
    category c
INNER JOIN 
    film_category fc ON c.category_id = fc.category_id
INNER JOIN 
    film f ON fc.film_id = f.film_id
GROUP BY 
    c.name
ORDER BY 
    film_count DESC;





SELECT 
    s.store_id,
    c.city,
    co.country
FROM 
    store s
INNER JOIN 
    address a ON s.address_id = a.address_id
INNER JOIN 
    city c ON a.city_id = c.city_id
INNER JOIN 
    country co ON c.country_id = co.country_id;





SELECT 
    p.store_id,
    SUM(p.amount) AS total_revenue
FROM 
    payment p
GROUP BY 
    p.store_id
ORDER BY 
    total_revenue DESC;






SELECT 
    c.name AS category_name,
    ROUND(AVG(f.length), 2) AS average_running_time
FROM 
    category c
INNER JOIN 
    film_category fc ON c.category_id = fc.category_id
INNER JOIN 
    film f ON fc.film_id = f.film_id
GROUP BY 
    c.name
ORDER BY 
    average_running_time DESC;
