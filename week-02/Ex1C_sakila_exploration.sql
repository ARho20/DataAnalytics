/*
a) The table for actor inludes information of the actors such as there name, actor id, and last update.
b) The table for film includes information about the film like the title, description, release year etc.
c) The film_actor table contains columns for both actor_id and film_id.
d) The rental table does have easy information to read, it shows the rental date, rental id, inventory id, customer id.
e) The inventory table includes inventory id, film id, store id, and last update
f) In order to understand the names of all films that were rented on a specific date I would use the film, rental, and inventory tables. The rental table shows rental date and inventory id, the inventory tables shows the film id, and the film table has the film title.
*/

SELECT film_id, title FROM film;
SELECT rental_date, inventory_id FROM rental;
SELECT inventory_id, film_id FROM inventory;