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
