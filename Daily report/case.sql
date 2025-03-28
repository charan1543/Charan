CREATE TABLE xxnyb_oracle (
    student_id NUMBER,
    first_name VARCHAR2(40) NOT NULL,
    last_name  VARCHAR2(30) NOT NULL
);

INSERT INTO xxnyb_oracle (
    student_id,
    first_name,
    last_name
) VALUES (
    1,
    'Robin',
    'Hood'
);

INSERT INTO xxnyb_oracle (
    student_id,
    last_name
) VALUES (
    1,
    'Hood'
);

DROP TABLE xxnyb_oracle;

CREATE TABLE xxnyb_oracle (
    student_id NUMBER,
    first_name VARCHAR2(40) NOT NULL,
    last_name  VARCHAR2(30) NOT NULL,
    email      VARCHAR2(100) UNIQUE
);

INSERT INTO xxnyb_oracle VALUES (
    &student_id,
    &first_name,
    &last_name,
    &email
);
--new:Insert into xxnyb_oracle values (1, 'Robin', 'hood', );
INSERT INTO xxnyb_oracle (
    student_id,
    first_name,
    email
) VALUES (
    1,
    'robin',
    'robinhood@gmail.com'
);
--cannot insert NULL into ("HR"."XXNYB_ORACLE"."LAST_NAME")

INSERT INTO xxnyb_oracle (
    student_id,
    first_name,
    last_name,
    email
) VALUES (
    1,
    'robin',
    'hood',
    'robinhood@gmail.com'
); -- unique constraint (HR.SYS_C007548) violated

INSERT INTO xxnyb_oracle (
    student_id,
    first_name,
    last_name,
    email
) VALUES (
    1,
    'robin',
    'hood',
    'robinhood01@gmail.com'
);
DROP TABLE xxnyb_oracle;
CREATE TABLE xxnyb_oracle (
    student_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(30),
    last_name  VARCHAR2(40),
    email      VARCHAR2(90)
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    599.99,
    'ModelB',
    'Hyderabad',
    TO_DATE('2021-07-20', 'YYYY-MM-DD'),
    2022,
    'Jubilee Hills'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    450.00,
    'ModelC',
    'Hyderabad',
    TO_DATE('2019-11-25', 'YYYY-MM-DD'),
    2020,
    'Madhapur'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    750.00,
    'ModelD',
    'Hyderabad',
    TO_DATE('2021-06-10', 'YYYY-MM-DD'),
    2022,
    'Ameerpet'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    350.50,
    'ModelE',
    'Hyderabad',
    TO_DATE('2020-09-17', 'YYYY-MM-DD'),
    2021,
    'Kukatpally'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    850.00,
    'ModelF',
    'Hyderabad',
    TO_DATE('2021-02-25', 'YYYY-MM-DD'),
    2022,
    'HiTech City'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    400.00,
    'ModelG',
    'Hyderabad',
    TO_DATE('2020-08-13', 'YYYY-MM-DD'),
    2021,
    'Borabanda'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    530.75,
    'ModelH',
    'Hyderabad',
    TO_DATE('2020-12-05', 'YYYY-MM-DD'),
    2021,
    'Secunderabad'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    620.00,
    'ModelI',
    'Hyderabad',
    TO_DATE('2021-04-22', 'YYYY-MM-DD'),
    2022,
    'Panjagutta'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    699.99,
    'ModelJ',
    'Hyderabad',
    TO_DATE('2021-08-18', 'YYYY-MM-DD'),
    2022,
    'Begumpet'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    580.00,
    'ModelK',
    'Hyderabad',
    TO_DATE('2020-06-10', 'YYYY-MM-DD'),
    2021,
    'Srinagar Colony'
);
INSERT INTO noice (
    price,
    model,
    city,
    manufacturingdate,
    year_of_sale,
    location
) VALUES (
    720.00,
    'ModelL',
    'Hyderabad',
    TO_DATE('2021-01-03', 'YYYY-MM-DD'),
    2022,
    'Nampally'
);
select * from noice;
UPDATE noice
SET
    price =
        CASE
            WHEN model = 'ModelA' THEN
                3500
            WHEN model = 'ModelB' THEN
                4000
            WHEN model = 'ModelC' THEN
                4500
            WHEN model = 'ModelD' THEN
                5000
            WHEN model = 'ModelE' THEN
                5500
        END
WHERE
    model IN ( 'ModelA', 'ModelB', 'ModelC', 'ModelD', 'ModelE' );
SELECT
    model,
    price,
    CASE
        WHEN price < 100 THEN
            'Cheap'
        WHEN price >= 100
             AND price <= 500 THEN
            'Affordable'
        ELSE
            'Expensive'
    END AS price_category
FROM
    noice;
SELECT
    model,
    price,
    CASE
        WHEN price < 800 THEN
            'Cheap'
        WHEN price >= 1000
             AND price <= 500 THEN
            'Affordable'
        ELSE
            'Expensive'
    END AS price_category
FROM
    noice;