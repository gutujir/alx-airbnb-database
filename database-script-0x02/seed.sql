-- Insert Users
INSERT INTO "user" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-1', 'Alice', 'Johnson', 'alice@example.com', 'hashedpass1', '1234567890', 'guest'),
  ('uuid-2', 'Bob', 'Smith', 'bob@example.com', 'hashedpass2', '2345678901', 'host'),
  ('uuid-3', 'Carol', 'Williams', 'carol@example.com', 'hashedpass3', '3456789012', 'guest');

-- Insert Properties
INSERT INTO property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('prop-1', 'uuid-2', 'Cozy Cottage', 'A cozy little place in the countryside.', 'Addis Ababa', 45.00),
  ('prop-2', 'uuid-2', 'Urban Apartment', 'Modern apartment downtown.', 'Adama', 60.00);

-- Insert Bookings
INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('book-1', 'prop-1', 'uuid-1', '2025-06-01', '2025-06-05', 180.00, 'confirmed'),
  ('book-2', 'prop-2', 'uuid-3', '2025-07-10', '2025-07-15', 300.00, 'pending');

-- Insert Payments
INSERT INTO payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay-1', 'book-1', 180.00, 'credit_card'),
  ('pay-2', 'book-2', 300.00, 'paypal');

-- Insert Reviews
INSERT INTO review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev-1', 'prop-1', 'uuid-1', 5, 'Amazing stay! Very clean and quiet.'),
  ('rev-2', 'prop-2', 'uuid-3', 4, 'Great location, friendly host.');

-- Insert Messages
INSERT INTO message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg-1', 'uuid-1', 'uuid-2', 'Hi Bob, is the cottage available in June?'),
  ('msg-2', 'uuid-2', 'uuid-1', 'Yes, it’s available from the 1st to 5th of June.');
