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
``

-- 4.	Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT *
FROM `students`
``

-- 5.	Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)
SELECT *
FROM `students `
``

-- 6.	Selezionare tutti i corsi di laurea magistrale (38)
SELECT *
FROM `students `
``

-- 7.	Da quanti dipartimenti è composta l'università? (12)
SELECT *
FROM `students `
``

-- 8.	Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT *
FROM `students `
``



EX - Query con GROUP BY
-- 1.	Contare quanti iscritti ci sono stati ogni anno
SELECT *
FROM `students `
``

-- 2.	Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT *
FROM `students `
``

-- 3.	Calcolare la media dei voti di ogni appello d'esame
SELECT *
FROM `students `
``

-- 4.	Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT *
FROM `students `
``
