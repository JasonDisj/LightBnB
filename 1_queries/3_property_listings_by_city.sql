-- SELECT properties.id AS id, title, cost_per_night, AVG(rating) AS average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_id
-- WHERE city = 'Vancouver' AND rating >= 4
-- GROUP BY properties.id
-- ORDER BY cost_per_night
-- LIMIT 10;

SELECT properties.id AS id, title, cost_per_night, AVG(property_reviews.rating) as average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;