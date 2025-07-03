
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




EXPLAIN
SELECT 
  u.name, COUNT(b.id)
FROM users u
JOIN bookings b ON u.id = b.user_id
GROUP BY u.name;
