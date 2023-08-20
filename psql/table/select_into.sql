-- https://www.postgresql.org/docs/current/sql-selectinto.html
-- https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-select-into/
-- https://www.commandprompt.com/education/postgresql-select-into-statement-with-examples/


-- PostgreSQL select into
-- SELECT
--     select_list
-- INTO [ TEMPORARY | TEMP | UNLOGGED ] [ TABLE ] new_table_name
-- FROM
--     table_name
-- WHERE
--     search_condition;

SELECT *
INTO TABLE users_copy
FROM users;

SELECT username
INTO TABLE users_username
FROM users;

SELECT name, username
INTO TABLE users_name_username
FROM users;
-- ________________________

SELECT username
INTO TABLE users_username_ali
FROM users
WHERE name = 'ali';