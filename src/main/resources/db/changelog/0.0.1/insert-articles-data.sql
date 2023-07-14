-- liquibase formatted sql

-- changeset nazar:4
INSERT INTO articles (id, title, content, author_id)
VALUES
    (nextval('article_sequence'), 'Article 1 Title', 'Article 1 Content', (SELECT id FROM authors WHERE name = 'name 1')),
    (nextval('article_sequence'), 'Article 2 Title', 'Article 2 Content', (SELECT id FROM authors WHERE name = 'name 1')),
    (nextval('article_sequence'), 'Article 3 Title', 'Article 3 Content', (SELECT id FROM authors WHERE name = 'name 1')),
    (nextval('article_sequence'), 'Article 4 Title', 'Article 4 Content', (SELECT id FROM authors WHERE name = 'name 1')),
    (nextval('article_sequence'), 'Article 5 Title', 'Article 5 Content', (SELECT id FROM authors WHERE name = 'name 2')),
    (nextval('article_sequence'), 'Article 6 Title', 'Article 6 Content', (SELECT id FROM authors WHERE name = 'name 3')),
    (nextval('article_sequence'), 'Article 7 Title', 'Article 7 Content', (SELECT id FROM authors WHERE name = 'name 3'));


