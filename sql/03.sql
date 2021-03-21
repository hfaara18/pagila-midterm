/*
 * Write a SQL query SELECT query that:
 * List the first and last names of all actors who have appeared in movies in the "Children" category,
 * but that have never appeared in movies in the "Horror" category.
 *
 * HINT:
 * This requires joining from the category table down to the actor table.
 */
select distinct first_name, last_name
from category
join film_category using (category_id)
join film_actor using (film_id)
join actor using (actor_id)
where category.name='Children'
and 
actor_id not in
(
    select actor_id
    from category
    join film_category using (category_id)
    join film_actor using (film_id)
    where category.name='Horror'
);
