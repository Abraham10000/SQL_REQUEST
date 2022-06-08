select nom_client, prenom_client, type, tarif, montant_paye 
from client, offre, reserver 
where client.id_client = reserver.id_client 
and offre.id_offre = reserver.id_offre 
and montant_paye < tarif ;