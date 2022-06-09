-- revenu par moi
select sum(montant_paye) from reserver
where date_part('month', date_reservation) = 6;