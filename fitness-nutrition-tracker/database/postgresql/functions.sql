-- Function to calculate BMI (Body Mass Index)
CREATE OR REPLACE FUNCTION calculate_bmi(user_id INT) 
RETURNS NUMERIC AS $$
DECLARE
    user_weight NUMERIC;
    user_height NUMERIC;
    bmi NUMERIC;
BEGIN
    -- Get the user's weight and height
    SELECT weight, height INTO user_weight, user_height 
    FROM Users
    WHERE user_id = $1;
    
    -- Calculate BMI: weight (kg) / (height (m)^2)
    bmi := user_weight / (user_height * user_height);
    
    RETURN bmi;
END;
$$ LANGUAGE plpgsql;
