-- revenu les 7 dernier jour
select sum(montant_paye) from reserver
where date_part('day', date_reservation) <= date_part('day', current_date)
and date_part('day', date_reservation) > date_part('day', current_date)-7;