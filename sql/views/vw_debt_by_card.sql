SELECT
    card_type,
    COUNT(DISTINCT customer_id) AS customer_count,
    ROUND(AVG(total_debt), 2) AS avg_total_debt
FROM stg_customer_cards
GROUP BY card_type