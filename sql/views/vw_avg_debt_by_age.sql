SELECT
    age_group,
    COUNT(DISTINCT customer_id) AS customer_count,
    ROUND(AVG(total_debt), 2) AS avg_total_debt
FROM stg_customer_age_groups
GROUP BY age_group
ORDER BY avg_total_debt DESC