-- liquibase formatted sql

-- changeset nazar:3
INSERT INTO authors (id, name)
VALUES (nextval('author_sequence'), 'name 1'),
       (nextval('author_sequence'), 'name 2'),
       (nextval('author_sequence'), 'name 3');
