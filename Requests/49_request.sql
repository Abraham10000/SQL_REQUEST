-- afficher le vehicule qui a eu besoin de plus de maintenance. --

 select matricule,count(*) as nombre_de_maintenance,date_maintenance from vehicules 
 inner join requerir on vehicules.id_vehicule = requerir.id_vehicule 
 group by matricule order by count(*) desc limit 1