-- Retrieve all bookings with user, property, and payment details
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    u.email,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.payment_date
FROM 
    Booking b
JOIN 
    "User" u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;


-- Optimized: Indexes assumed in place; columns trimmed to reduce size
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount
FROM 
    Booking b
JOIN 
    "User" u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;
