-- Query 1
CREATE VIEW lesson_per_month_2022 AS 
    SELECT EXTRACT(MONTH FROM duration) AS month,
    COUNT (*) AS number_of_lessons
    FROM lesson
    WHERE EXTRACT(YEAR FROM duration) = '2022'
    GROUP BY month 
    ORDER BY month;
    -- test : SELECT * FROM lesson_per_month_2022;

-- Query 1.1
CREATE VIEW lesson_types_per_month_2022 AS 
    SELECT EXTRACT(MONTH FROM duration) AS month,
    COUNT (*) AS number_of_lessons, 
    COUNT(CASE when (lesson.lesson_price_id=lesson_price.lesson_price_id) AND (lesson_price.type = 'individual lesson')  then 1 ELSE NULL END) AS individual_lessons, 
    COUNT(CASE when (lesson.lesson_price_id=lesson_price.lesson_price_id) AND (lesson_price.type = 'group lesson') then 1 ELSE NULL END) AS group_lessons, 
    COUNT(CASE when (lesson.lesson_price_id=lesson_price.lesson_price_id) AND (lesson_price.type = 'ensemble') then 1 ELSE NULL END) AS ensemble_lessons
    FROM lesson join lesson_price On lesson.lesson_price_id=lesson_price.lesson_price_id
    WHERE EXTRACT(YEAR FROM duration) = '2022'
    GROUP BY month 
    ORDER BY month;
    -- test : SELECT * FROM lesson_types_per_month_2022;


-- Query 2

CREATE VIEW student_sibling AS

    SELECT
    SUM(case when student.has_a_sibling_student = 'NO' then 1 else 0 end) AS student_with_no_siblings
    ,SUM(case 
            when (student.has_a_sibling_student = 'YES') AND (siblings.is_student = 'YES') AND (student.student_id = siblings.student_id) AND (number_of_siblings =1) 
            then 1 else 0 end) AS student_with_one_sibling
    ,SUM(case
            when (student.has_a_sibling_student = 'YES') AND (siblings.is_student = 'YES') AND (student.student_id = siblings.student_id) AND (number_of_siblings =2) 
            then 1 else 0 end)  AS student_with_two_sibling
    from siblings Full JOIN student ON siblings.student_id=student.student_id;
    -- test : SELECT * FROM student_sibling;


-- Query 3
CREATE VIEW instructors_lesson_per_month AS
    SELECT
    instructor.instructor_id AS instructor_id,
    p.person_number AS person_number,
    p.first_name AS first_name,
    p.middle_name AS middle_name,
    p.last_name AS last_name,
    instructor.employment_id AS employment_id,
    COUNT(booking.lesson_id) AS number_of_lessons
    FROM booking INNER JOIN instructor AS instructor ON booking.instructor_id = instructor.instructor_id 
    INNER JOIN person AS p ON p.person_id= instructor.person_id 
    WHERE EXTRACT(YEAR FROM DATE) = '2022' AND EXTRACT(MONTH FROM DATE) = '8'  -- MONTH 8 AND YEAR 2022
    group by (instructor.instructor_id,p.person_number,p.first_name,p.middle_name,p.last_name)
    HAVING COUNT(booking.lesson_id)>0
    ORDER BY instructor_id;
    
-- test : SELECT * FROM instructors_lesson_per_month; 

--Query 4
CREATE Materialized VIEW ensembles_nextweek_info AS
    SELECT
    max_number_of_students AS max_number_of_students,
    min_number_of_students AS min_number_of_students,
    booked_seats AS booked_seats,
    genre AS genre,
    EXTRACT(dow from lesson.duration) AS weekd,

    CASE 
        when ((max_number_of_students - booked_seats) = 0) THEN 'full booked'
        when ((max_number_of_students - booked_seats) = 1 OR (max_number_of_students - booked_seats) = 2) THEN '1-2 seats left'
        ELSE 'has more seats left'
    END AS left_seats

    FROM lesson_price
    INNER JOIN lesson ON lesson_price.lesson_price_id = lesson.lesson_price_id
    WHERE lesson_price.type = 'ensemble' and date_part('week', lesson.duration) = date_part('week', NOW() + INTERVAL '1 week')
    ORDER BY genre, weekd;

-- test :SELECT * FROM  ensembles_nextweek_info;

-- ANLAYZING query 3
/*
VACUUM ANALYZE;
EXPLAIN  SELECT
    instructor.instructor_id AS instructor_id,
    p.person_number AS person_number,
    p.first_name AS first_name,
    p.middle_name AS middle_name,
    p.last_name AS last_name,
    instructor.employment_id AS employment_id,
    COUNT(booking.lesson_id) AS number_of_lessons
    FROM booking INNER JOIN instructor AS instructor ON booking.instructor_id = instructor.instructor_id 
    INNER JOIN person AS p ON p.person_id= instructor.person_id 
    WHERE EXTRACT(YEAR FROM DATE) = '2022' AND EXTRACT(MONTH FROM DATE) = '8'  -- MONTH 8 AND YEAR 2022
    group by (instructor.instructor_id,instructor.employment_id,p.person_number,p.first_name,p.middle_name,p.last_name)
    HAVING COUNT(booking.lesson_id)>0
    ORDER BY instructor_id;
    */