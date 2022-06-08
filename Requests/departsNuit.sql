--afficher les depart de nuit;
select * from voyage where heure_depart between'18:00:00' and '23:59:59' 
union select * from voyage where heure_depart between '00:00:00' and '04:59:59';