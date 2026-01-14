-- raggruppare gli studenti in base alla data di nascita(1990)
SELECT *, year(`date_of_birth`) 
    from students
    where year (`date_of_birth`) = "1990"

-- selezionare tutti i corsi che hanno più di 10 crediti
select *
    from courses
    where cfu >"10";

-- selezionare tutti gli studenti che hanno più di trent'anni
select* , year(`date_of_birth`) 
from students
where `date_of_birth` < "1994-01-14"

-- selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
select *
    from courses 
    where year = "1" 
    and period = "I Semestre";


-- selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
select * , date(`date`), hour(`hour`)
from exams
where date = "2020-06-20"
and hour > "14:00";

-- selezionare tutti i corsi di laurea magistrale 
select *, (`level`)
from degrees
where level = "magistrale"

-- di quanti dipartimenti è composta l'università?
select COUNT(id)
from departments

-- quanti insegnanti non hanno un numero di telefono?
select count(*)
from teachers 
where phone is null;



