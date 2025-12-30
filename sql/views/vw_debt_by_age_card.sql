SELECT
    age_group,
    card_type,
    COUNT(DISTINCT customer_id) AS customer_count,
    ROUND(AVG(total_debt), 2) AS avg_total_debt,
    ROUND(AVG(yearly_income), 2) AS avg_income
FROM stg_customer_age_groups
GROUP BY age_group, card_type