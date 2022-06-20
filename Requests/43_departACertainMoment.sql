--lister les vehicule qui part a un certain moment
--heure1, heure2, jour1 et jour2 sont à remplacer par les moment choisis 
select vl.id_vehicule, matricule, vg.id_voyage, jour_depart, heure_depart
from utiliser u inner join vehicules vl on u.id_vehicule = vl.id_vehicule
inner join voyage vg on u.id_voyage = vg.id_voyage
where heure_depart between 'heure1' and 'heure2'
and jour_depart between 'jour1' and 'jour2';