-- https://www.postgresql.org/docs/current/sql-createsequence.html
-- https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-sequences/
-- https://www.commandprompt.com/education/how-to-create-a-sequence-in-postgresql/

-- PostgreSQL create sequence
-- CREATE SEQUENCE [ IF NOT EXISTS ] seq_name
-- [ AS integer_data_type ]
-- [ INCREMENT [ BY ] increment_value ]
-- [ MINVALUE min_value | NO MINVALUE ] 
-- [ MAXVALUE max_value | NO MAXVALUE ]
-- [ START [ WITH ] start_value ] 
-- [ CACHE cache ] 
-- [ [ NO ] CYCLE ]
-- [ OWNED BY { tab_name.col_name | NONE } ]

CREATE SEQUENCE example_sequence
AS SMALLINT
INCREMENT 2
MAXVALUE 20
START 10;

SELECT nextval('example_sequence');


CREATE SEQUENCE example_sequence_1
AS SMALLINT
INCREMENT -2
MINVALUE 1 
MAXVALUE 20
START 10
CYCLE;

SELECT nextval('example_sequence_1');


CREATE TABLE student_tab(
id INTEGER, 
std_name TEXT,
std_age INTEGER
);

CREATE SEQUENCE std_seq
START 1
INCREMENT 3
MAXVALUE 50
OWNED BY student_tab.id;

INSERT INTO student_tab(id, std_name, std_age)
VALUES (nextval('std_seq'), 'Dean Jones', 35),
(nextval('std_seq'), 'Tim Joseph', 25);

SELECT * FROM student_tab;