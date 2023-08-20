-- https://www.postgresql.org/docs/current/sql-insert.html
-- https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-insert/

-- PostgreSQL insert into values
-- INSERT INTO [name] (column1, column2, …)
-- VALUES (value1, value2, …)
-- RETURNING *;

INSERT INTO users (name, username)
VALUES('Ali','ali');

INSERT INTO users (name, username)
VALUES('Vali','vali') RETURNING id;

INSERT INTO users (name, username)
VALUES('Murod','murod_ali') RETURNING *;