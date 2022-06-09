-- Revenus durant un jour
select sum(montant_paye) from reserver
where date_reservation = current_date;

-- ce requete trouve le montant totale verser le jour
-- pour un jour quelconque, changer current_date