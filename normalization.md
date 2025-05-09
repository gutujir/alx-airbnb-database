# Airbnb Database Normalization

## ✅ Objective

Ensure the Airbnb database schema is normalized to the **Third Normal Form (3NF)** to reduce redundancy and improve data integrity.

---

## 🔹 First Normal Form (1NF)

**Definition**:

- All attributes contain only atomic (indivisible) values.
- Each row is uniquely identifiable with a primary key.

**Application**:

- All attributes in the schema are atomic (e.g., `email`, `price_per_night`, `start_date`).
- Each table has a primary key (`user_id`, `property_id`, `booking_id`, etc.).

✅ **1NF: Satisfied**

---

## 🔹 Second Normal Form (2NF)

**Definition**:

- Must be in 1NF.
- No partial dependencies on a composite primary key.

**Application**:

- All tables use single-column primary keys (no composite keys).
- All non-key attributes are fully functionally dependent on their table's primary key.

✅ **2NF: Satisfied**

---

## 🔹 Third Normal Form (3NF)

**Definition**:

- Must be in 2NF.
- No transitive dependencies (non-key attributes should not depend on other non-key attributes).

### Table-by-Table Review:

#### 1. **User**

- All attributes (`name`, `email`, `password_hash`, etc.) depend only on `user_id`.

✅ 3NF: Satisfied

---

#### 2. **Property**

- Attributes like `title`, `description`, `location`, `price_per_night` depend only on `property_id`.
- `host_id` is a foreign key, not a transitive dependency.

✅ 3NF: Satisfied

---

#### 3. **Booking**

- All attributes (`start_date`, `end_date`, `total_price`) depend solely on `booking_id`.
- `user_id` and `property_id` are foreign keys and do not introduce transitive dependencies.

✅ 3NF: Satisfied

---

#### 4. **Payment**

- Attributes (`amount`, `payment_date`, `payment_method`) depend only on `payment_id`.
- `booking_id` is a foreign key to the Booking table.

✅ 3NF: Satisfied

---

#### 5. **Review**

- Attributes (`rating`, `comment`) depend on `review_id`.
- `user_id` and `property_id` are foreign keys.

✅ 3NF: Satisfied

---

#### 6. **Message**

- All attributes (`sender_id`, `recipient_id`, `content`, `timestamp`) depend only on `message_id`.

✅ 3NF: Satisfied

---

## ✅ Conclusion

The Airbnb database schema is normalized up to **Third Normal Form (3NF)**:

- No repeating groups (1NF ✅)
- No partial dependencies (2NF ✅)
- No transitive dependencies (3NF ✅)

This ensures:

- Elimination of redundancy
- Better data consistency
- Easier maintenance and scalability
