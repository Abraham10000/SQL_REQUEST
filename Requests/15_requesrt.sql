-- Afficher les offres les plus fréquemment achetées --

 select type as nom_offre,count(*) as nombre_de_reseration 
 from offre 
 inner join reserver on offre.id_offre = reserver.id_offre 
 group by type order by count(*) desc limit 2;