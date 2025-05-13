select * from workers where gender is null;

select * from workers;

CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
    CONSTRAINT constraint_name constraint_type (column_name)
);

CREATE TABLE CHARAN (
    TOWN      VARCHAR(10),
    MANDAL    VARCHAR(10),
    MOBILE_NO NUMBER,
        CONSTRAINT PK_CHARAN PRIMARY KEY
( TOWN ) );

CREATE TABLE TEJA (
    EMP_ID       NUMBER,
    COMPANY_NAME VARCHAR2(20),
    CITY         VARCHAR2(30),
    CONSTRAINT FK_TEJA FOREIGN key (EMP_ID)
    references workers (EMP_ID)
);
DROP TABLE TEJA;
DROP TABLE CHARAN;

CREATE TABLE CHARAN (
    TOWN      VARCHAR(10),
    MANDAL    VARCHAR(10),
    MOBILE_NO NUMBER,
    CONSTRAINT chk_CHARAN check (MOBILE_NO >10));