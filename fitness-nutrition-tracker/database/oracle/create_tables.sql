-- SQL script to create tables in PostgreSQL 
-- Create Users table
CREATE TABLE Users (
    user_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    username VARCHAR2(100),
    age NUMBER,
    gender VARCHAR2(10),
    weight NUMBER(5,2),
    height NUMBER(5,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Workouts table
CREATE TABLE Workouts (
    workout_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    user_id NUMBER REFERENCES Users(user_id),
    workout_type VARCHAR2(100),
    duration NUMBER, -- in minutes
    calories_burned NUMBER(5,2),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Meals table
CREATE TABLE Meals (
    meal_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    user_id NUMBER REFERENCES Users(user_id),
    meal_name VARCHAR2(100),
    calories NUMBER(5,2),
    protein NUMBER(5,2),
    carbs NUMBER(5,2),
    fats NUMBER(5,2),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Goals table
CREATE TABLE Goals (
    goal_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    user_id NUMBER REFERENCES Users(user_id),
    target_weight NUMBER(5,2),
    daily_calorie_goal NUMBER(5,2),
    daily_calories_to_burn NUMBER(5,2),
    start_date DATE,
    end_date DATE
);

-- Create Progress table
CREATE TABLE Progress (
    progress_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    user_id NUMBER REFERENCES Users(user_id),
    current_weight NUMBER(5,2),
    calories_consumed NUMBER(5,2),
    calories_burned NUMBER(5,2),
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
