select a.actor_id, a.full_name, f.title
from actor as a
left join old_actor_film as o
on o.actor_id = a.actor_id
left join film as f
on f.film_id = o.film_id
where a.full_name = 'penelope guiness';


select cat.name, count(cat.name) as recuento
from old_actor_film as oaf
left join category as cat
on oaf.category_id = cat.category_id
group by cat.name
order by recuento desc;

select cat.name, avg(f.replacement_cost) as media
from old_actor_film  as oaf
left join film as f
on f.film_id = oaf.film_id
left join category as cat
on oaf.category_id = cat.category_id
group by cat.name
order by media asc;

select count(rental_date) as total
from rental
where rental_date like '2005-05-30%' or rental_date like '2005-05-29%';

select a.full_name
from old_actor_film as oaf
left join actor as a
on oaf.actor_id = a.actor_id
where oaf.film_id = 
(select f.film_id 
from film as f
where f.title = 'ACADEMY DINOSAUR');