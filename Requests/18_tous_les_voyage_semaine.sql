-- tous les voyages durant un jour
select * from voyage where date_part('day', jour_depart) <= date_part('day', current_date)
and date_part('day', jour_depart) > date_part('day', current_date)-7;