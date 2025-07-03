
 High-Usage Columns (based on your earlier queries)
🔹 users table
id → used in JOINs (users.id = bookings.user_id)

email → commonly queried in WHERE (for login)

🔹 bookings table
user_id → JOIN + WHERE

property_id → JOIN

start_date, end_date → filtered by date ranges

🔹 properties table
id → JOINs

location → searched often

price → filtered or ordered



-- USERS table
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_id ON users(id);  -- optional; often already indexed if primary key

-- BOOKINGS table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- PROPERTIES table
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price ON properties(price);
CREATE INDEX idx_properties_id ON properties(id);  -- optional; often already indexed



EXPLAIN
SELECT 
  u.name, COUNT(b.id)
FROM users u
JOIN bookings b ON u.id = b.user_id
GROUP BY u.name;
