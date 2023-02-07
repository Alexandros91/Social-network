TRUNCATE TABLE posts RESTART IDENTITY;

INSERT INTO posts (title, content, views, account_id) VALUES ('Fake post 1', 'Fake content 1', 30, 2);
INSERT INTO posts (title, content, views, account_id) VALUES ('Fake post 2', 'Fake content 2', 40, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('Fake post 3', 'Fake content 3', 50, 4);
INSERT INTO posts (title, content, views, account_id) VALUES ('Fake post 4', 'Fake content 4', 60, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('Fake post 5', 'Fake content 5', 70, 4);
INSERT INTO posts (title, content, views, account_id) VALUES ('Fake post 6', 'Fake content 6', 80, 2);