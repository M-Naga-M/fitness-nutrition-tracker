-- Create Users table
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    weight DECIMAL(5,2),
    height DECIMAL(5,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Workouts table
CREATE TABLE Workouts (
    workout_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    workout_type VARCHAR(100),
    duration INT, -- in minutes
    calories_burned DECIMAL(5,2),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Meals table
CREATE TABLE Meals (
    meal_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    meal_name VARCHAR(100),
    calories DECIMAL(5,2),
    protein DECIMAL(5,2),
    carbs DECIMAL(5,2),
    fats DECIMAL(5,2),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Goals table
CREATE TABLE Goals (
    goal_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    target_weight DECIMAL(5,2),
    daily_calorie_goal DECIMAL(5,2),
    daily_calories_to_burn DECIMAL(5,2),
    start_date DATE,
    end_date DATE
);

-- Create Progress table
CREATE TABLE Progress (
    progress_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    current_weight DECIMAL(5,2),
    calories_consumed DECIMAL(5,2),
    calories_burned DECIMAL(5,2),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
