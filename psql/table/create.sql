-- https://www.postgresql.org/docs/current/sql-createtable.html
-- https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-create-table/

-- PostgreSQL create table
-- CREATE TABLE [IF NOT EXISTS] [name] (
--    column1 datatype(length) column_contraint,
--    column2 datatype(length) column_contraint,
--    column3 datatype(length) column_contraint,
--    table_constraints
-- );

CREATE TABLE IF NOT EXISTS users (
   id BIGSERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   username VARCHAR(255) NOT NULL
);
