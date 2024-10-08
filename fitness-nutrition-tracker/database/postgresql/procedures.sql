-- Create a stored procedure to update progress after logging a workout
CREATE OR REPLACE FUNCTION update_progress_after_workout() 
RETURNS TRIGGER AS $$
BEGIN
    -- Insert new progress record based on workout
    INSERT INTO Progress (user_id, calories_burned, date)
    VALUES (NEW.user_id, NEW.calories_burned, NEW.date);
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create a trigger that fires after a workout is inserted
CREATE TRIGGER after_workout
AFTER INSERT ON Workouts
FOR EACH ROW EXECUTE FUNCTION update_progress_after_workout();
