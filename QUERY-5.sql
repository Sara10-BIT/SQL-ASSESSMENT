SELECT
    User_ID,
    Membership,
    SIGNUP_DATE,
    CURRENT_DATE - SIGNUP_DATE AS DaysAsGoldMember
FROM
    GOLD_USER_SIGNUP
WHERE
    Membership = 'GOLD';
