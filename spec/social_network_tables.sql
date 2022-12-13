CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  email text,
  username text
);

INSERT INTO accounts (email, username) VALUES ('email_1@gmail.com', 'username_1');
INSERT INTO accounts (email, username) VALUES ('email_2@gmail.com', 'username_2');
INSERT INTO accounts (email, username) VALUES ('email_3@gmail.com', 'username_3');
INSERT INTO accounts (email, username) VALUES ('email_4@gmail.com', 'username_4');


CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title text,
  content text,
  views int,
  account_id int references accounts(id)
  -- constraint fk_account foreign key(account_id)
    -- on delete cascade
);

INSERT INTO posts (title, content, views, account_id) VALUES ('First post', 'First post content', 60, 2);
INSERT INTO posts (title, content, views, account_id) VALUES ('Second post', 'Second post content', 80, 4);
INSERT INTO posts (title, content, views, account_id) VALUES ('Third post', 'Third post content', 20, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('Fourth post', 'Fourth post content', 80, 3);
INSERT INTO posts (title, content, views, account_id) VALUES ('Fifth post', 'Fifth post content', 40, 2);
INSERT INTO posts (title, content, views, account_id) VALUES ('Sixth post', 'Sixth post content', 90, 4);


