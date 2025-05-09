-- Create the database 
CREATE DATABASE airbnb_db;

-- Create User table
CREATE TABLE "User" (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create Property table
CREATE TABLE "Property" (
    property_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES "User"(user_id),
    title VARCHAR(255) NOT NULL,
    description TEXT,
    address VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    price_per_night DECIMAL(10, 2) NOT NULL,
    available_from DATE,
    available_to DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Booking table
CREATE TABLE booking (
  booking_id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES "User"(user_id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES "Property"(property_id) ON DELETE CASCADE,
  check_in DATE NOT NULL,
  check_out DATE NOT NULL,
  total_price DECIMAL(10, 2) NOT NULL,
  status VARCHAR(50) DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Payment table
CREATE TABLE Payment (
    payment_id SERIAL PRIMARY KEY,
    booking_id INTEGER REFERENCES booking(booking_id),
    amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Review table
CREATE TABLE Review (
    review_id SERIAL PRIMARY KEY,
    booking_id INTEGER REFERENCES booking(booking_id),
    user_id INTEGER REFERENCES "User"(user_id),
    property_id INTEGER REFERENCES "Property"(property_id),
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Message table
CREATE TABLE Message (
    message_id SERIAL PRIMARY KEY,
    sender_id INTEGER REFERENCES "User"(user_id),
    receiver_id INTEGER REFERENCES "User"(user_id),
    property_id INTEGER REFERENCES "Property"(property_id),
    content TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Indexes for performance
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_property_user_id ON "Property"(user_id);
CREATE INDEX idx_review_property_id ON Review(property_id);
CREATE INDEX idx_message_sender_id ON Message(sender_id);
CREATE INDEX idx_message_receiver_id ON Message(receiver_id);
