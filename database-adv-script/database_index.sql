-- Index on Booking.user_id for faster joins and WHERE filtering
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking.property_id for faster joins
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Property.name for faster search or ordering
CREATE INDEX idx_property_name ON Property(name);

-- Index on User.email (assuming email is used for login/search)
CREATE INDEX idx_user_email ON "User"(email);
