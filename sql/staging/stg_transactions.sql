SELECT
    t.transaction_id,
    t.customer_id,
    t.amount,
    t.date,
    a.card_type
FROM transactions t
JOIN accounts a
    ON t.account_id = a.account_id