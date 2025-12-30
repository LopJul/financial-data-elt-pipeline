SELECT DISTINCT
    c.customer_id,
    a.card_type,
    c.total_debt,
    c.yearly_income
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id