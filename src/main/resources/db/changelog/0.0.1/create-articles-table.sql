-- liquibase formatted sql
-- changeset nazar:2
CREATE SEQUENCE IF NOT EXISTS article_sequence START WITH 1 INCREMENT BY 50;

CREATE TABLE articles
(
    id        BIGINT NOT NULL,
    title     TEXT   NOT NULL,
    content   TEXT   NOT NULL,
    author_id BIGINT,
    CONSTRAINT articles_pk PRIMARY KEY (id)
);

ALTER TABLE articles
    ADD CONSTRAINT ARTICLES_REFERENCES_AUTHORS_FK FOREIGN KEY (author_id) REFERENCES authors (id);

-- changeset nazar:2_rollback
-- rollback drop sequence article_sequence;
-- rollback drop table articles;