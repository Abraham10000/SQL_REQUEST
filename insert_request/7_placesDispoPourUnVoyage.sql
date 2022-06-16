select vo.id_voyage,ve.id_vehicule,nombre_places,places_dispo from utiliser v
inner join voyage vo on v.id_voyage=vo.id_voyage inner join vehicules ve
on v.id_vehicule=ve.id_vehicule;