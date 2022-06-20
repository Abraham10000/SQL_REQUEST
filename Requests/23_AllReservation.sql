select nom_client,prenom_client,contact,jour_depart,heure_depart,id_ville_depart,id_ville_arrivee
from reserver r INNER JOIN client c on r.id_client=c.id_client
INNER JOIN voyage v on r.id_voyage=v.id_voyage;