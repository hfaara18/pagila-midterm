/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query SELECT query that:
 * Lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 * (You may choose to either include or exclude the movie 'AMERICAN CIRCUS' in the results.)
 */
select title
from film
join film_actor using (film_id)
where actor_id in (
    select actor_id
    from film_actor
    join film  using (film_id)
    where title='AMERICAN CIRCUS'
)
group by title
having count(actor_id) >= 2
order by count(actor_id) desc
;
