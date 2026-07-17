CREATE TABLE goal_progress_history (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    goal_id INT NOT NULL,
    previous_amount NUMERIC(12,2),
    new_amount NUMERIC(12,2),
    change_amount NUMERIC(12,2),
    source VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_goal
        FOREIGN KEY (goal_id) REFERENCES goals(id) ON DELETE CASCADE,
    CONSTRAINT fk_user
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
