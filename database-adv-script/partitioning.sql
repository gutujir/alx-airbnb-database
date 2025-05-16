-- Step 1: Create a new partitioned table
CREATE TABLE Booking_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions by year
CREATE TABLE Booking_2023 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 3: Insert sample data into partitions (optional for testing)
-- INSERT INTO Booking_partitioned (...) VALUES (...);

-- Step 4: Query bookings in 2024
EXPLAIN ANALYZE
SELECT * FROM Booking_partitioned
WHERE start_date BETWEEN '2024-05-01' AND '2024-05-31';
