# Index Performance Analysis

## Objective

To analyze and improve the performance of queries by adding indexes on frequently queried columns.

---

## Created Indexes

| Table    | Column      | Index Name              |
| -------- | ----------- | ----------------------- |
| Booking  | user_id     | idx_booking_user_id     |
| Booking  | property_id | idx_booking_property_id |
| Property | name        | idx_property_name       |
| User     | email       | idx_user_email          |

---

## Performance Comparison (Example)

### Query (Before Index):

```sql
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 1;
```
