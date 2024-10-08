-- Insert sample data into Users table
INSERT INTO Users (username, age, gender, weight, height) 
VALUES ('John Doe', 30, 'Male', 80, 1.75);

-- Insert sample data into Workouts table
INSERT INTO Workouts (user_id, workout_type, duration, calories_burned) 
VALUES (1, 'Running', 45, 400);

-- Insert sample data into Meals table
INSERT INTO Meals (user_id, meal_name, calories, protein, carbs, fats) 
VALUES (1, 'Chicken Salad', 350, 25, 10, 15);

-- Insert sample data into Goals table
INSERT INTO Goals (user_id, target_weight, daily_calorie_goal, daily_calories_to_burn, start_date, end_date)
VALUES (1, 75, 2000, 500, '2024-01-01', '2024-06-01');
