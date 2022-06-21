select nom_client,prenom_client,contact from reserver r INNER JOIN voyage v on r.id_voyage=v.id_voyage
INNER JOIN client c on r.id_client=c.id_client
WHERE jour_depart = current_date;