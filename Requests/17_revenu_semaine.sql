-- revenu les 7 dernier jour
select sum(montant_paye) from reserver
where date_reservation <= current_date
and date_reservation > current_date-7;