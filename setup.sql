-- Active: 1735535649427@@127.0.0.1@5432@jojoereviews
DROP DATABASE IF EXISTS jojoereviews;

CREATE DATABASE jojoereviews;

\c jojoereviews

CREATE TABLE authors (
    id INTEGER PRIMARY KEY,
    author_name VARCHAR(255)
);

CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    rating INTEGER,
    thoughts TEXT,
    author INTEGER,

    Foreign Key (author) REFERENCES authors(id)
);
-- hello johanna



INSERT INTO authors (id, author_name) VALUES (1, 'Johanna');
INSERT INTO authors(id, author_name) VALUES (2, 'Joe');

INSERT INTO movies(id, title, rating, thoughts, author) 
VALUES (1, 'Don’t Worry Darling', 9, 'Suspenseful with a mystery. The twist ending mid way through exposing another Simulated world turned the movie around and made it more interesting.', 2),  
(2, 'Sex in the City', 9, 'Very fun, fashionable, and ridiculously entertaining for some reason.', 1 );


select * from authors;
select * from movies;

select * from movies join authors on movies.author = authors.id;

-- joining movies authors with the author IDs, so that movies with "Johanna" as author is returned.
select title author_name from movies join authors on movies.author = authors.id;

-- where conditional helps specify your results
select title, author from movies where author = 1;

-- combining join + where
select title, author, author_name from movies join authors on movies.author = authors.id where author_name = 'Johanna';



