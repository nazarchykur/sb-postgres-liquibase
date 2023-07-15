-- liquibase formatted sql
-- changeset nazar:1
CREATE SEQUENCE IF NOT EXISTS author_sequence START WITH 1 INCREMENT BY 50;

CREATE TABLE authors
(
    id   BIGINT      NOT NULL,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT authors_pk PRIMARY KEY (id)
);

-- changeset nazar:1_rollback
-- rollback drop sequence author_sequence;
-- rollback drop table authors;