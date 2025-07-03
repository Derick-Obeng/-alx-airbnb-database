

-- USERS table
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_id ON users(id);  -- optional; often indexed as PK

-- BOOKINGS table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- PROPERTIES table
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price ON properties(price);
CREATE INDEX idx_properties_id ON properties(id);  -- optional; often indexed as PK

-- Query performance before and after using EXPLAIN ANALYZE

-- BEFORE Indexing
EXPLAIN ANALYZE
SELECT u.name, COUNT(b.id)
FROM users u
JOIN bookings b ON u.id = b.user_id
GROUP BY u.name;

-- AFTER Indexing
EXPLAIN ANALYZE
SELECT u.name, COUNT(b.id)
FROM users u
JOIN bookings b ON u.id = b.user_id
GROUP BY u.name;




