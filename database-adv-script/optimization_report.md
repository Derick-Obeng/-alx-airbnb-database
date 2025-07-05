
EXPLAIN ANALYZE\
SELECT\
  b.id AS booking_id,\
  b.start_date,\
  b.end_date,\
  u.name AS user_name,\
  p.title AS property_title,\
  pay.amount\
FROM bookings b\
JOIN users u ON b.user_id = u.id\
JOIN properties p ON b.property_id = p.id\
JOIN payments pay ON b.id = pay.booking_id;\
WHERE b.status = 'confirmed' AND pay.status = 'completed';
