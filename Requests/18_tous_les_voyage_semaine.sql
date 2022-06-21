-- tous les voyages durant un jour
select * from voyage where jour_depart <= current_date
and jour_depart > current_date-7;