SELECT pizzeria.name
FROM person_visits po
JOIN pizzeria ON pizzeria.id = po.pizzeria_id 
WHERE (SELECT count(*)
	   FROM person per
	   WHERE per.id = po.person_id AND per.gender = 'male') != (SELECT count(*)
																FROM person per
																WHERE per.id = po.person_id AND per.gender = 'female')
ORDER BY 1;