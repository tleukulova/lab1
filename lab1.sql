CREATE DATABASE lab1;

CREATE TABLE users (
    id bigserial primary key,
    firstname varchar(100),
    lastname varchar(100)
    )

ALTER TABLE users
ADD COLUMN isadmin INTEGER;

ALTER TABLE users
ALTER COLUMN isadmin TYPE BOOLEAN
USING CASE
    WHEN isadmin = 0 THEN false
    WHEN isadmin = 1 THEN true
END;

ALTER TABLE users
ALTER COLUMN isadmin SET DEFAULT false;

ALTER TABLE users
DROP CONSTRAINT IF EXISTS users_pkey;

ALTER TABLE users
ADD CONSTRAINT pk_users_id PRIMARY KEY (id);

CREATE TABLE tasks (
    id bigserial primary key,
    name varchar(50),
    user_id int
)

DROP TABLE tasks;
DROP DATABASE lab1;
