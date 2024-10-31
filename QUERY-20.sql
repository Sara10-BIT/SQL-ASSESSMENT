SELECT user_id,
CASE 
WHEN membership = 'GOLD' THEN CAST(ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY signup_date) AS TEXT)
ELSE 
'NA'
END AS signup_rank FROM gold_user_signup ORDER BY user_id, signup_date;