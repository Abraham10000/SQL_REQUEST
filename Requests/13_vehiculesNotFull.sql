--Vehicule qui n'est pas plein le jour de départ--

select jour_depart,id_vehicule,matricule,places_dispo from voyage,vehicules
WHERE jour_depart = current_date
AND places_dispo != 0;