# ALX Airbnb Database: Advanced SQL - Joins Task

## 📝 Task 0: Write Complex Queries with Joins

This task focuses on mastering different types of SQL joins using the Airbnb database schema. The goal is to extract meaningful relationships across users, bookings, properties, and reviews using advanced join techniques.

### ✅ Objectives

- Use **INNER JOIN** to fetch matching records between tables.
- Use **LEFT JOIN** to retrieve all records from one table, including unmatched ones.
- Use **FULL OUTER JOIN** to combine all records from both tables regardless of matches.

---

## 🔍 SQL Queries

### 1. `INNER JOIN`: Get all bookings with user details

```sql
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;
```
