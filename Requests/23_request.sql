-- Les reservations d'un client. --

select nom_client,type as nom_offre,place,reserver.date_reservation,montant_paye from client,offre,reserver
where reserver.id_client = client.id_client
and reserver.id_offre = offre.id_offre
and nom_client = 'Yoshi';