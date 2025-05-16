# Booking Table Partitioning Report

## Objective

Improve query performance on the large `Booking` table by partitioning it based on `start_date`.

## Implementation

- Created `Booking_partitioned` as a `RANGE` partitioned table on `start_date`.
- Created yearly partitions: `Booking_2023`, `Booking_2024`, `Booking_2025`.

## Testing & Performance

Used `EXPLAIN ANALYZE` to compare performance of date-range queries:

### Before Partitioning

```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2024-05-01' AND '2024-05-31';
-- Execution Time: ~25ms (scanned full table)
```
