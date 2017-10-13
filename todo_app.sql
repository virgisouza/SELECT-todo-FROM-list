-- DROP DATABASE IF EXISTS todo_app;

-- DROP USER IF EXISTS michael;



-- CREATE DATABASE todo_app;
-- \c todo_app

-- CREATE USER micheal WITH ENCRYPTED PASSWORD 'stonebreaker';

CREATE TABLE tasks (
  id int NOT NULL PRIMARY KEY,
  title varchar(255) NOT NULL,
  description text NULL,
  created_at timestamp NOT NULL,
  updated_at timestamp NULL,
  completed boolean NOT NULL
);

ALTER TABLE tasks
DROP COLUMN completed;

ALTER TABLE tasks
ADD completed_at timestamp NULL;

ALTER TABLE tasks
ALTER COLUMN updated_at
SET NOT NULL,
ALTER COLUMN updated_at
SET DEFAULT now();

INSERT INTO tasks
VALUES (default, 'Study SQL', 'Complete this exercise', now(), now(), NULL);

SELECT *
FROM tasks



-- UPDATE tasks
-- SET id =

