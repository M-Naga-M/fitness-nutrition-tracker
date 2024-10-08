-- Functions to automate tasks in PostgreSQL 
-- Function to calculate BMI (Body Mass Index)
CREATE OR REPLACE FUNCTION calculate_bmi(user_id IN NUMBER) RETURN NUMBER IS
    user_weight NUMBER;
    user_height NUMBER;
    bmi NUMBER;
BEGIN
    -- Get user weight and height
    SELECT weight, height INTO user_weight, user_height FROM Users WHERE user_id = user_id;
    
    -- Calculate BMI
    bmi := user_weight / (user_height * user_height);
    
    RETURN bmi;
END calculate_bmi;
/
