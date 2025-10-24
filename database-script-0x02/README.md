# Airbnb Database — Data Seeding (DML)

## 📘 Overview
This directory contains SQL scripts that populate the Airbnb database with sample data.  
The goal is to simulate realistic user activity, property listings, and bookings.

---

## 📜 Files Included
- **seed.sql** — SQL script containing `INSERT` statements to add demo data for all tables.

---

## 🧩 Entities Seeded
| Table | Description |
|--------|--------------|
| users | Sample users (hosts and guests) |
| properties | Sample property listings |
| bookings | Sample reservation records |
| reviews | User feedback for bookings |
| payments | Payment transactions per booking |

---

## 💡 Sample Example
```sql
INSERT INTO users (name, email, password, role)
VALUES 
('Alice Mwangi', 'alice@example.com', 'hashed_pw_1', 'host');
