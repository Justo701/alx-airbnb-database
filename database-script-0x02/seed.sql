-- ==============================================
-- Airbnb Database: Data Seeding (DML)
-- Author: Justus Korkou
-- ==============================================

-- Make sure to use the correct database
USE airbnb_db;

-- ==========================
-- 1. Insert Users (Hosts & Guests)
-- ==========================
INSERT INTO users (name, email, password, role)
VALUES
('Alice Mwangi', 'alice@example.com', 'hashed_pw_1', 'host'),
('John Doe', 'john@example.com', 'hashed_pw_2', 'guest'),
('Mary Wanjiku', 'mary@example.com', 'hashed_pw_3', 'host'),
('Brian Kiptoo', 'brian@example.com', 'hashed_pw_4', 'guest');

-- ==========================
-- 2. Insert Properties
-- ==========================
INSERT INTO properties (host_id, name, location, price_per_night, status)
VALUES
(1, 'Nairobi Studio Apartment', 'Nairobi', 4500, 'available'),
(3, 'Mombasa Beach Villa', 'Mombasa', 12000, 'available'),
(1, 'Nakuru Cottage', 'Nakuru', 7000, 'unavailable');

-- ==========================
-- 3. Insert Bookings
-- ==========================
INSERT INTO bookings (guest_id, property_id, check_in, check_out, status)
VALUES
(2, 1, '2025-11-10', '2025-11-15', 'confirmed'),
(4, 2, '2025-12-01', '2025-12-05', 'pending'),
(2, 3, '2025-11-20', '2025-11-23', 'cancelled');

-- ==========================
-- 4. Insert Reviews
-- ==========================
INSERT INTO reviews (booking_id, rating, comment)
VALUES
(1, 5, 'Amazing stay! The apartment was clean and cozy.'),
(2, 4, 'Nice place but communication could improve.'),
(3, 2, 'Booking got cancelled last minute.');

-- ==========================
-- 5. Insert Payments
-- ==========================
INSERT INTO payments (booking_id, amount, payment_date, status)
VALUES
(1, 22500, '2025-11-09', 'completed'),
(2, 48000, '2025-11-28', 'pending'),
(3, 21000, '2025-11-18', 'refunded');

-- ==========================
-- END OF SEED SCRIPT
-- ==========================
