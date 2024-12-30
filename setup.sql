-- Active: 1735535649427@@127.0.0.1@5432@jojoereviews
DROP DATABASE IF EXISTS jojoereviews;

CREATE DATABASE jojoereviews;

\c jojoereviews


CREATE TABLE Movies (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    rating INTEGER,
    thoughts TEXT,
    author VARCHAR(255)
);
-- hello johanna
CREATE TABLE Authors (
    id INTEGER PRIMARY KEY,
    author_name VARCHAR(255)
);


INSERT INTO Authors(author_name) VALUES ("Johanna");
-- INSERT INTO Authors(id, author_name) VALUES (2, "Joe");


