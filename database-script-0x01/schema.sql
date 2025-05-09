-- Insert sample Users
INSERT INTO "User" (name, email, phone, password_hash) VALUES
('Alice Johnson', 'alice@example.com', '1234567890', 'hashed_password_1'),
('Bob Smith', 'bob@example.com', '0987654321', 'hashed_password_2'),
('Carol White', 'carol@example.com', '1112223333', 'hashed_password_3');

-- Insert sample Properties
INSERT INTO "Property" (user_id, title, description, address, city, country, price_per_night, available_from, available_to)
VALUES
(1, 'Cozy Apartment in Addis Ababa', 'A beautiful 2-bedroom apartment in the city center.', '123 Main St', 'Addis Ababa', 'Ethiopia', 45.00, '2025-06-01', '2025-12-31'),
(2, 'Lake Side Villa', 'Stunning villa with lake view.', '456 Lakeview Dr', 'Bahir Dar', 'Ethiopia', 120.00, '2025-06-01', '2025-09-30');

-- Insert sample Bookings
INSERT INTO Booking (user_id, property_id, check_in, check_out, total_price, status)
VALUES
(3, 1, '2025-07-01', '2025-07-05', 180.00, 'confirmed'),
(1, 2, '2025-08-10', '2025-08-15', 600.00, 'pending');

-- Insert sample Payments
INSERT INTO Payment (booking_id, amount, payment_method, payment_status)
VALUES
(1, 180.00, 'Credit Card', 'Completed'),
(2, 600.00, 'PayPal', 'Pending');

-- Insert sample Reviews
INSERT INTO Review (booking_id, user_id, property_id, rating, comment)
VALUES
(1, 3, 1, 5, 'Amazing stay! Very clean and comfortable.'),
(2, 1, 2, 4, 'Great view and peaceful place.');

-- Insert sample Messages
INSERT INTO Message (sender_id, receiver_id, property_id, content)
VALUES
(3, 1, 1, 'Hi Alice, is the apartment available for July 1st?'),
(1, 3, 1, 'Yes, it is available. Looking forward to hosting you!');
