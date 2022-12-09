TRUNCATE TABLE accounts RESTART IDENTITY;

INSERT INTO accounts (email, username) VALUES ('example_1@gmail.com', 'example_1');
INSERT INTO accounts (email, username) VALUES ('example_2@gmail.com', 'example_2');