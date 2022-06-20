-- Combien de clients n'ont pas encore effectue leur payement en totalite? Lesquels? --

-- Si le client a reservé le pack PREMIUM --

select nom_client,sum(count(nom_client)) over (order by nom_client)
from client
inner join reserver on reserver.id_client = client.id_client
where reserver.id_offre = 1 and montant_paye < 30000 group by nom_client;


-- Si le client a reservé le pack LITE --

select nom_client,sum(count(nom_client)) over (order by nom_client)
from client
inner join reserver on reserver.id_client = client.id_client
where reserver.id_offre = 2 and montant_paye < 20000 group by nom_client;

-- Si le client a reservé le pack CLASSIQUE --

select nom_client,sum(count(nom_client)) over (order by nom_client)
from client
inner join reserver on reserver.id_client = client.id_client
where reserver.id_offre = 3 and montant_paye < 15000 group by nom_client;