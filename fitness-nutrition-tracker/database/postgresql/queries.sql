-- Query to track calories consumed vs. burned per day for a user
SELECT p.date, p.calories_consumed, p.calories_burned
FROM Progress p
WHERE p.user_id = 1
ORDER BY p.date DESC;

-- Query to calculate progress towards the target weight
SELECT g.target_weight, p.current_weight, 
       (g.target_weight - p.current_weight) AS weight_left
FROM Goals g 
JOIN Progress p ON g.user_id = p.user_id
WHERE p.user_id = 1
ORDER BY p.date DESC
LIMIT 1;

-- Weekly calorie report for the user
SELECT 
    TO_CHAR(p.date, 'IW') AS week, 
    SUM(p.calories_consumed) AS total_calories_consumed, 
    SUM(p.calories_burned) AS total_calories_burned
FROM Progress p
WHERE p.user_id = 1
GROUP BY TO_CHAR(p.date, 'IW')
ORDER BY week DESC;
