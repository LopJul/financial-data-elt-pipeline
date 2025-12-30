SELECT
    card_type,
    COUNT(transaction_id) AS transaction_count,
    ROUND(AVG(amount), 2) AS avg_transaction_amount,
    ROUND(SUM(amount), 2) AS total_transaction_amount
FROM stg_transactions
GROUP BY card_type