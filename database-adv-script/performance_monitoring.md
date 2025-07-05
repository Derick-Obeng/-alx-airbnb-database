SELECT\ 
  b.id AS booking_id,\
  b.start_date,\
  b.end_date,\
  u.name AS user_name,\
  pay.amount\
FROM bookings b\
JOIN users u ON b.user_id = u.id\
JOIN payments pay ON b.id = pay.booking_id\
WHERE b.status = 'confirmed' AND pay.status = 'completed';


EXPLAIN ANALYZE\
SELECT \
  b.id AS booking_id,\
  b.start_date,\
  b.end_date,\
  u.name AS user_name,\
  pay.amount\
FROM bookings b\
JOIN users u ON b.user_id = u.id\
JOIN payments pay ON b.id = pay.booking_id\
WHERE b.status = 'confirmed' AND pay.status = 'completed';

SET PROFILING = 1;

-- Run your query\
SELECT \
  b.id AS booking_id,\
  b.start_date,\
  b.end_date,\
  u.name AS user_name,\
  pay.amount\
FROM bookings b\
JOIN users u ON b.user_id = u.id\
JOIN payments pay ON b.id = pay.booking_id\
WHERE b.status = 'confirmed' AND pay.status = 'completed';

-- Check time breakdown\
SHOW PROFILES;\
-- Improve WHERE clause filtering\
CREATE INDEX idx_bookings_status ON bookings(status);\
CREATE INDEX idx_payments_status ON payments(status);

-- Speed up JOINs\
CREATE INDEX idx_bookings_user_id ON bookings(user_id);\
CREATE INDEX idx_payments_booking_id ON payments(booking_id);


EXPLAIN ANALYZE\
SELECT \
  b.id AS booking_id,\
  b.start_date,\
  b.end_date,\
  u.name AS user_name,\
  pay.amount\
FROM bookings b\
JOIN users u ON b.user_id = u.id\
JOIN payments pay ON b.id = pay.booking_id\
WHERE b.status = 'confirmed' AND pay.status = 'completed';




