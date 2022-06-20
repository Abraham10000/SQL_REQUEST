--Les chauffeurs qui vont conduire les véhicules pour un voyage.
select vg.id_voyage, jour_depart, vl.id_vehicule, matricule, id_chauffeur, nom_complet 
from utiliser u inner join voyage vg on u.id_voyage = vg.id_voyage
inner join vehicules vl on u.id_vehicule = vl.id_vehicule
inner join chauffeur c on c.id_vehicule = vl.id_vehicule;