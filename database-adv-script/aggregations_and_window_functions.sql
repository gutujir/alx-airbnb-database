-- Total number of bookings made by each user
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM
    "User" u
JOIN
    Booking b ON u.user_id = b.user_id
GROUP BY
    u.user_id, u.first_name, u.last_name;


-- Rank properties based on the number of bookings
SELECT
    p.property_id,
    p.name,
    COUNT(b.booking_id) AS booking_count,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS property_rank
FROM
    Property p
LEFT JOIN
    Booking b ON p.property_id = b.property_id
GROUP BY
    p.property_id, p.name;
