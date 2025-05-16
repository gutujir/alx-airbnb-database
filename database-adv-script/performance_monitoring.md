# Database Performance Monitoring Report

## Objective

Continuously monitor and optimize query performance using tools such as `EXPLAIN ANALYZE` to ensure the database remains efficient.

---

## Step 1: Identify Frequently Used Queries

### Query 1: Fetch all bookings for a specific user

```sql
SELECT * FROM Booking WHERE user_id = 10;

```
