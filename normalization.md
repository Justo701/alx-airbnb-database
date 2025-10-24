# Airbnb Database — Normalization Process

## Step 1: First Normal Form (1NF)
All tables contain atomic (indivisible) values.  
- No repeating groups or arrays.  
- Each column holds a single value per record.

✅ Example:
User table — each user has one name, one email, one password.

---

## Step 2: Second Normal Form (2NF)
- Database is already in 1NF.
- All non-key attributes fully depend on the entire primary key.

✅ Example:
Booking table — total_price, start_date, and end_date all depend on booking_id (not partially).

---

## Step 3: Third Normal Form (3NF)
- Database is in 2NF.
- No transitive dependency (non-key attributes don’t depend on other non-key attributes).

✅ Example:
In Property table:
- host_id → user_id (Foreign Key)
- No duplicate data like host_name or host_email, which belong to the User table.

---

## Result
The database is now normalized to **Third Normal Form (3NF)**, minimizing redundancy and ensuring data consistency.

✅ Final Tables:
- User
- Property
- Booking
- Review
- Payment
