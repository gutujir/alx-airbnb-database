# Query Optimization Report

## Objective

Optimize a complex query that retrieves booking details along with associated user, property, and payment information.

---

## Initial Query Analysis

### Query

```sql
SELECT b.booking_id, u.first_name, u.last_name, u.email, p.name, p.location, pay.amount, pay.payment_date
FROM Booking b
JOIN "User" u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
JOIN Payment pay ON b.booking_id = pay.booking_id;
```
