-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) = '1990';