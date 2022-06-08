--le nombre de client en moyenne par voyage
select vg.id_voyage,vl.id_vehicule,nombre_places,places_dispo from utiliser u
inner join voyage vg on u.id_voyage=vg.id_voyage inner join vehicules vl
on u.id_vehicule=vl.id_vehicule;