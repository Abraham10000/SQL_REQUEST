 -- vérifier si un client est un habitué de la compagnie, récuperer 
  --le nombre de voyages déjà effectués par ce client au sein de la compagnie
 
 
 select nom_client,count(*) as nombre_voyage from client
inner join reserver on client.id_client = reserver.id_client
where client.id_client = 1 group by nom_client;