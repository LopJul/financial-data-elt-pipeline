SELECT
    c.customer_id,
    CASE
        WHEN c.age < 20 THEN '<20'
        WHEN c.age BETWEEN 20 AND 34 THEN '20-34'
        WHEN c.age BETWEEN 35 AND 49 THEN '35-49'
        ELSE '50+'
    END AS age_group,
    c.gender,
    sc.card_type,
    sc.total_debt,
    sc.yearly_income
FROM customers c
JOIN stg_customer_cards sc
    ON c.customer_id = sc.customer_id