## The Read 

`INNER JOIN` only gives you rows where there's a match in both bookings and users.

So this returns only bookings that are linked to actual users.

---

`LEFT JOIN` pulls all properties, and if there’s a review, it’ll show up.

If a property has no review, the review columns will just be NULL.

This is like listing every Airbnb property, even if nobody has rated it yet.

---

`FULL OUTER JOIN` brings everything from both sides — even if there's no match.

So:

You’ll see users with bookings ✅

Users with no bookings 💤

Bookings with no user ❓ (might happen if some test data went rogue)

Basically, it’s like taking attendance even for folks who didn’t show up OR didn’t sign up at all — you want everyone listed.


--------
--------
--------

This uses a scalar subquery in the WHERE clause.

For each property, it checks:

"What’s the average rating of this property from the reviews table?"

Then filters only those where AVG(rating) > 4.0.

Think of it like: “Only show me the properties that are consistently 🔥🔥🔥 (above 4 stars).”


This is a correlated subquery because it uses a value (u.id) from the outer query inside the subquery.

For each user, it counts how many bookings they’ve made.

Only returns users where that count is greater than 3.

It’s like saying: “I want my power users — not the casual browsers.”

---

These types of subqueries are 🔑 when you want to filter based on aggregated or dependent data, especially when JOIN gets messy.
