-- Les véhicules disponibles, qui ne requierent pas de maintenance.
select vl.id_vehicule,matricule from vehicules vl
inner join utiliser u on vl.id_vehicule = u.id_vehicule
inner join requerir r on vl.id_vehicule = r.id_vehicule
inner join voyage vg on u.id_voyage = vg.id_voyage
inner join maintenance m on r.id_maintenance = m.id_maintenance
where u.id_vehicule is null and r.id_vehicule is null;