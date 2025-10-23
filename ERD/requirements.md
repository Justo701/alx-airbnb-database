# Airbnb Database — Entities and Relationships (ER Diagram)

## 🎯 Objective
The purpose of this step is to identify and define all **entities**, their **attributes**, and the **relationships** between them in the Airbnb database system.  
The resulting design will guide database normalization and schema creation.

---

## 🧱 1. Entities and Their Attributes

### 🧍 User
Represents both guests and hosts on the platform.

| Attribute | Type | Description |
|------------|------|--------------|
| user_id | INT (PK) | Unique identifier for each user |
| name | VARCHAR | Full name of the user |
| email | VARCHAR | User’s email address |
| password | VARCHAR | Hashed login password |
| role | ENUM('host', 'guest') | Role of the user |
| created_at | DATETIME | Account creation timestamp |

---

### 🏠 Property
Represents an accommodation listed by a host.

| Attribute | Type | Description |
|------------|------|--------------|
| property_id | INT (PK) | Unique identifier for each property |
| host_id | INT (FK → User.user_id) | The host who owns this property |
| title | VARCHAR | Title of the property listing |
| description | TEXT | Description of the property |
| location | VARCHAR | Property location |
| price_per_night | DECIMAL | Cost per night |
| created_at | DATETIME | When the property was added |

---

### 📅 Booking
Represents a reservation made by a guest for a property.

| Attribute | Type | Description |
|------------|------|--------------|
| booking_id | INT (PK) | Unique booking record |
| user_id | INT (FK → User.user_id) | Guest making the booking |
| property_id | INT (FK → Property.property_id) | Booked property |
| start_date | DATE | Booking start date |
| end_date | DATE | Booking end date |
| total_price | DECIMAL | Total cost of the booking |
| status | ENUM('pending', 'confirmed', 'cancelled') | Booking status |

---

### 💬 Review
Feedback provided by a guest after completing a booking.

| Attribute | Type | Description |
|------------|------|--------------|
| review_id | INT (PK) | Unique review record |
| booking_id | INT (FK → Booking.booking_id) | Booking related to the review |
| rating | INT | Rating from 1–5 |
| comment | TEXT | Review comment |
| created_at | DATETIME | Review creation time |

---

### 💳 Payment
Tracks transactions made for bookings.

| Attribute | Type | Description |
|------------|------|--------------|
| payment_id | INT (PK) | Unique payment record |
| booking_id | INT (FK → Booking.booking_id) | Booking being paid for |
| amount | DECIMAL | Payment amount |
| method | ENUM('card', 'mpesa', 'paypal') | Payment method used |
| status | ENUM('pending', 'completed', 'failed') | Payment status |
| payment_date | DATETIME | Payment timestamp |

---

## 🔗 2. Relationships Between Entities

| Relationship | Type | Description |
|---------------|------|-------------|
| User → Property | One-to-Many | One host can own many properties |
| User → Booking | One-to-Many | One guest can make many bookings |
| Property → Booking | One-to-Many | A property can have many bookings |
| Booking → Review | One-to-One | Each booking has one review |
| Booking → Payment | One-to-One | Each booking has one payment |

---

## 🧩 3. ER Diagram (Visual Representation)

**Diagram Example:**
```text
USER (user_id PK)
   |
   |<-- host_id FK
PROPERTY (property_id PK)
   |
   |<-- property_id FK
BOOKING (booking_id PK)
   |      |
   |      |<-- booking_id FK
   |      +-- PAYMENT (payment_id PK)
   +-- REVIEW (review_id PK)
