--afficher les details d'une voyage [jour depart, heure_depart,[ville depart/ville dest]
select id_voyage, jour_depart, heure_depart, vd.nom_ville 
as ville_depart, va.nom_ville as ville_arrivee from voyage 
inner join ville as vd on vd.id_ville = voyage.id_ville_depart
inner join ville as va on va.id_ville = voyage.id_ville_arrivee;