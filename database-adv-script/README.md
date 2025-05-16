# Airbnb Database Advanced Queries

## 📌 Objective

This file contains advanced SQL JOIN queries written for the Airbnb database schema using PostgreSQL. The purpose is to demonstrate mastery of SQL joins (INNER, LEFT, and FULL OUTER JOIN).

## ✅ Queries

### 1. INNER JOIN

Retrieves all bookings and the users who made them. Ensures only bookings that are linked to valid users are shown.

### 2. LEFT JOIN

Lists all properties and their associated reviews, including properties with no reviews (NULLs in review fields).

### 3. FULL OUTER JOIN

Fetches all users and all bookings. Displays all users, whether they have bookings or not, and all bookings, whether or not they're linked to a user.

---

## 📂 File Structure

- `joins_queries.sql`: Contains all JOIN queries.
- `README.md`: Describes the purpose and logic of the queries.

## Subqueries

This script demonstrates:

- Non-correlated subquery: Selecting properties with an average rating above 4.0.
- Correlated subquery: Selecting users with more than 3 bookings.
