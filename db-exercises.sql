-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) = '1990';

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT *
FROM `courses`
WHERE `cfu` > 10;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) < 1992
ORDER BY `date_of_birth`;


-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT *
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` = 1;

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT *
FROM `exams`
WHERE date(`date`) = '2020-06-20'
AND hour(`hour`) >= 14;

-- 6. Selezionare tutti i corsi della magistrale
SELECT *
FROM `degrees`
WHERE `name` LIKE '%magistrale%';

-- 7. Da quanti dipartimenti è composta l'Università?
SELECT COUNT(`id`) as `n_of_departments`
FROM `departments`;

-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(`id`) as `n_of_teachers_w/out_phone`
FROM `teachers`
WHERE `phone` IS NULL;

-- 9. Contare quanti iscritti ci sono stati ogni anno

-- 10. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(`id`) AS `teachers_per_office`, `office_address`
FROM `teachers`
GROUP BY `office_address`;

-- 11. Contare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 2) AS `avg_vote`, `exam_id` AS `exam_session`
FROM `exam_student`
GROUP BY `exam_id`;

-- 12. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`id`) AS `n_of_degrees`, `department_id` AS `department`
FROM `degrees`
GROUP BY (`department_id`);