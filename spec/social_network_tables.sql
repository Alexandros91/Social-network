CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  email text,
  username text
);

INSERT INTO accounts (email, username) VALUES ('original_1@gmail.com', 'original_user_1');
INSERT INTO accounts (email, username) VALUES ('original_2@gmail.com', 'original_user_2');
INSERT INTO accounts (email, username) VALUES ('original_3@gmail.com', 'original_user_3');
INSERT INTO accounts (email, username) VALUES ('original_4@gmail.com', 'original_user_4');


CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title text,
  content text,
  views int,
  account_id int,
  constraint fk_account foreign key(account_id)
    references accounts(id)
    on delete cascade
);

INSERT INTO posts (title, content, views, account_id) VALUES ('Original post 1', 'Original content 1', 60, 2);
INSERT INTO posts (title, content, views, account_id) VALUES ('Original post 2', 'Original content 2', 80, 4);
INSERT INTO posts (title, content, views, account_id) VALUES ('Original post 3', 'Original content 3', 20, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('Original post 4', 'Original content 4', 80, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('Original post 5', 'Original content 5', 40, 2);
INSERT INTO posts (title, content, views, account_id) VALUES ('Original post 6', 'Original content 6', 90, 4);


