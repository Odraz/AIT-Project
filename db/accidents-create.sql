-- Table: "ait-project".accidents

-- DROP TABLE "ait-project".accidents;

CREATE TABLE "ait-project".accidents
(
    title text COLLATE pg_catalog."default",
    "2001" bigint,
    "2002" bigint,
    "2003" bigint,
    "2004" bigint,
    "2005" bigint,
    "2006" bigint,
    "2007" bigint,
    "2008" bigint,
    "2009" bigint,
    "2010" bigint,
    "2011" bigint,
    "2012" bigint,
    "2013" bigint,
    "2014" bigint,
    "2015" bigint,
    id text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE "ait-project".accidents
    OWNER to postgres;