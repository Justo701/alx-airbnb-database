# Airbnb Database — Schema Design (DDL)

## 🧩 Overview
This directory contains the SQL schema definition for the Airbnb-like database system.  
The schema defines all entities, attributes, relationships, constraints, and indexes required to structure the database efficiently.

---

## 📜 File Included
- **schema.sql** — SQL script that creates the database tables, primary keys, foreign keys, and indexes.

---

## 🧱 Entities and Relationships
The schema contains five major entities:
1. **users** — stores user details (hosts and guests)
2. **properties** — represents listed houses or apartments
3. **bookings** — records reservations made by users
4. **reviews** — stores user feedback on properties
5. **payments** — tracks payment transactions for bookings

---

## 🔑 Key Design Decisions
- Each table has a **Primary Key (PK)** for unique identification.
- **Foreign Keys (FK)** enforce relationships and data integrity.
- **Constraints** (NOT NULL, UNIQUE, ENUM) ensure data consistency.
- **Indexes** improve performance for frequent search columns like `email`, `location`, and `status`.

---

## ⚙️ Example Table — Users
```sql
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('host','guest') NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
