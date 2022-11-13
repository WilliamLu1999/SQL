SELECT distinct name as Drinker FROM Drinkers d join Frequents f on d.name=f.drinker WHERE Drinker not in (SELECT distinct drinker from Frequents);

/*
Empty set (0.00 sec)
*/