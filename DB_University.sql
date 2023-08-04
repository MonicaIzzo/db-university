EX - Query con SELECT

-- 1.	Selezionare tutti gli studenti nati nel 1990 (160)

SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;


-- 2.	Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT *
FROM `courses`
WHERE `cfu` > 10


-- 3.	Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE `date_of_birth` <= DATE_SUB(CURDATE(), INTERVAL - 30 YEAR);


-- 4.	Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT *
FROM `courses`
WHERE `period` = `I semestre`
AND `year` = 1;

-- 5.	Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT *
FROM `exams`
WHERE `date` = `2020-06-20`
AND HOUR(`hour`) >= 14;

-- 6.	Selezionare tutti i corsi di laurea magistrale (38)
SELECT *
FROM `degrees`
WHERE `level` = `magistrale`

-- 7.	Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT (*) AS `numero_dipartimenti`
FROM `departments`;


-- 8.	Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT COUNT(*) AS `num_insegnanti`
FROM `teachers`
WHERE `phone` IS NULL;





EX - Query con GROUP BY
-- 1.	Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `numero_studenti`, YEAR(`enrolment_date`) AS `anno`
FROM `students`
GROUP BY `anno`;


-- 2.	Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `num_insegnanti`, `office_address` AS `edificio`
FROM `teachers`
GROUP BY `edificio`;

-- 3.	Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, ROUND(AVG(`vote`)) AS `vote_average`
FROM  `exam_student`
GROUP BY `exam_id`;

-- 4.	Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`name`) AS `Corso`, `department_id` 
FROM `degrees`
GROUP BY `department_id`




EX - Query con JOIN
-- 1.	Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;


-- 2.	Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;

-- 3.	Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;

-- 4.	Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;

-- 5.	Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;

-- 6.	6.	Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;


-- 7.	BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per superare ciascuno dei suoi esami
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;