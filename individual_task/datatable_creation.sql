CREATE TABLE user_actions (
    id serial PRIMARY KEY,
    user_id INT,
    session_id INT,
    action_date TIMESTAMP,
    element VARCHAR(20),
    profit INT,
    platform VARCHAR(20)
);
