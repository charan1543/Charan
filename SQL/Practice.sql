insert
    INTO students1 (S_NAME, studenupdate students1
SET
    mobile_no = 9878907665
WHERE
    s_name = 'sesi';
UPDATE students1
SET
    mobile_no = 9878907665
WHERE
    s_name = 'sesi';
ALTER TABLE students1 RENAME COLUMN mobile_no TO phone_no;
ALTER TABLE students1 ADD adress VARCHAR2(30);
ALTER TABLE students1 MODIFY
    course VARCHAR2(50);
ALTER TABLE students1 DROP COLUMN adress;
commit;
ALTER TABLE students1 ADD admission_date DATE;
INSERT INTO students1 ( admission_date ) VALUES ( '11-04-2025' );
ALTER TABLE students1 DROP COLUMN admission_date;
SELECT
    *
FROM
    students1;
DELETE FROM students1
WHERE
    s_name IS NULL
    AND student_id IS NULL;
UPDATE students1
SET
    admission_date = '11-04-2025'
SELECT
    upper(s_name),
    student_id,
    course,
    phone_no,
    course_amount
FROM
    students1;
SELECT
    lower(s_name),
    student_id,
    course,
    phone_no,
    course_amount
FROM
    students1;
SELECT
    length(s_name),
    ( phone_no ),
    s_name,
    course,
    phone_no,
    course_amount AS length
FROM
    students1;
SELECT
    length(s_name),
    length(phone_no) AS phone_no_length,
    s_name,
    course,
    phone_no,
    course_amount    AS length
FROM
    students1;
SELECT
    s_name,
    round(months_between(sysdate, admission_date),
          1) AS months_since_admission
FROM
    students1;
SELECT
    *
FROM
    students1
WHERE
    EXTRACT(YEAR FROM admission_date) = EXTRACT(YEAR FROM sysdate);
SELECT
    s_name,
    round(admission_date, 'MONTH') AS rounded_to_nearest_month
FROM
    students1;
select * from students1;
SELECT
    s_name,
    ADD_MONTHS(TRUNC(admission_date, 'MONTH'), 1) AS always_next_month
FROM
    students1;
SELECT
    to_char(sysdate, 'Month DD, YYYY') AS formatted_date
FROM
    dual;
SELECT
    to_char(sysdate, 'mm D, YY') AS formatted_date
FROM
    dual;
SELECT
    s_name,
    course,
    phone_no,
    course_amount to_char
( ADMISSION_DATE , 'DD Month YYYY' ) AS FORMATTED_DATE
FROM
  students1;
select * from students1;
SELECT
    s_name,
    course,
    phone_no,
    course_amount,
    to_char(admission_date, 'DD Month YYYY') AS formatted_date
FROM
    students1;

SELECT
    *
FROM
    students1
WHERE
    course_amount > 1000;
SELECT
    *
FROM
    students1
WHERE
    course = 'EEE';
select 25*12100 from dual;
