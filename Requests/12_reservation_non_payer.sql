-- afficher les client qui vont voygager et qui n'ont pas encore payer l'integralite de leurs frais.
select nom_client, prenom_client, voyage.id_voyage, jour_depart, heure_depart, offre.tarif, reserver.montant_paye from client, voyage, reserver, offre
where voyage.id_voyage=reserver.id_voyage
and voyage.jour_depart=current_date
and date_part('hour', voyage.heure_depart)>=date_part('hour', now())
and reserver.id_client=client.id_client
and reserver.id_offre=offre.id_offre
and reserver.montant_paye<offre.tarif;