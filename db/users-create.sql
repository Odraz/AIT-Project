-- Table: "ait-project".users

-- DROP TABLE "ait-project".users;

CREATE TABLE "ait-project".users
(
    username text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    password text COLLATE pg_catalog."default",
    firstname text COLLATE pg_catalog."default",
    lastname text COLLATE pg_catalog."default",
    address text COLLATE pg_catalog."default",
    CONSTRAINT users_email_key UNIQUE (email),
    CONSTRAINT users_username_key UNIQUE (username)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "ait-project".users
    OWNER to postgres;