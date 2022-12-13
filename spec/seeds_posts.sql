TRUNCATE TABLE posts RESTART IDENTITY;

INSERT INTO posts (title, content, views, account_id) VALUES ('post_1', 'post_1 content', 30, 2);
INSERT INTO posts (title, content, views, account_id) VALUES ('post_2', 'post_2 content', 40, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('post_3', 'post_3 content', 50, 4);
INSERT INTO posts (title, content, views, account_id) VALUES ('post_4', 'post_4 content', 60, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('post_5', 'post_5 content', 70, 4);
INSERT INTO posts (title, content, views, account_id) VALUES ('post_6', 'post_6 content', 80, 2);