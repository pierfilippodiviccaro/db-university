-- raggruppare gli studenti in base alla data di nascita(1990)
SELECT *, year(`date_of_birth`) 
    from students
    where year (`date_of_birth`) = "1990"

-- selezionare tutti i corsi che hanno più di 10 crediti
select *
    from courses
    where cfu >"10";

-- selezionare tutti gli studenti che hanno più di trent'anni
-- selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea


-- selezionare tutti gli appelli d'se