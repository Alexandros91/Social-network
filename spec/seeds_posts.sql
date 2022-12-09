TRUNCATE TABLE posts RESTART IDENTITY;

INSERT INTO posts (title, content, views, account_id) VALUES ('post_1', 'post_1 content', 30, 2);
INSERT INTO posts (title, content, views, account_id) VALUES ('post_2', 'post_2 content', 50, 1);