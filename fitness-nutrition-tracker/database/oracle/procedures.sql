-- Stored procedures and triggers in PostgreSQL 
-- Create a stored procedure to log progress after a workout is inserted
CREATE OR REPLACE PROCEDURE log_progress_after_workout IS
BEGIN
    -- Insert new progress record
    INSERT INTO Progress (user_id, calories_burned, date)
    VALUES (user_id, calories_burned, SYSDATE);
END;
/

-- Create a trigger to call the procedure after workout insert
CREATE OR REPLACE TRIGGER after_workout
AFTER INSERT ON Workouts
FOR EACH ROW
BEGIN
    log_progress_after_workout;
END;
/
