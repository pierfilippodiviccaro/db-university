-- 1 raggruppare gli studenti in base alla data di nascita(1990)
SELECT *, year(`date_of_birth`) 
    from students
    where year (`date_of_birth`) = "1990"

-- 2 selezionare tutti i corsi che hanno più di 10 crediti
select *
    from courses
    where cfu >"10";

-- 3 selezionare tutti gli studenti che hanno più di trent'anni
select*, timestampdiff(Year, `date_of_birth`, CURDATE()) AS `age` 
from students
--(esercizio numero tre modificato e sistemato)

-- 4 selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
select *
    from courses 
    where year = "1" 
    and period = "I Semestre";


-- 5 selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
select * , date(`date`), hour(`hour`)
from exams
where date = "2020-06-20"
and hour > "14:00"
ORDER BY `hour`;

-- 6 selezionare tutti i corsi di laurea magistrale 
select *, (`level`)
from degrees
where level = "magistrale"

-- 7 di quanti dipartimenti è composta l'università?
select COUNT(id)
from departments

-- 8 quanti insegnanti non hanno un numero di telefono?
select count(*)
from teachers 
where phone is null;

-- 9 (BONUS) contare quanti iscritti ci sono stati ogni anno
SELECT 
    YEAR(`enrolment_date`) as anno_iscrizione, 
    COUNT(*) as num_iscritti
FROM students
GROUP BY YEAR(`enrolment_date`)
ORDER BY year(`enrolment_date`);

-- 10 (BONUS)  contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT
	`office_address` as uffici,
	count(*) as professori 
from teachers
group by `office_address`;
-- 11 (BONUS) calcolare la media dei voti di ogni appello d'esame
select exam_id , avg(`vote`)
from exam_student
group by exam_id

--12 (bonus) calcolare quanti corsi di laurea ci sono per ogni dipartimento
select `department_id` , count(*) as `degrees_number`
from degrees
group by `department_id`
-- bonus 12 sistemato

--13 (da qui in poi esercizi del 15/01/2026) selezionare tutti gli studenti iscritti al corso di laurea in economia
select * 
from students
inner join `degrees`
on `students`.degree_id = `degrees`.id
where `degrees`.name= "Corso di Laurea in Economia"

-- 14 selezionare tutti i corsi di laurea magistrale del dipartimento di neuroscienze