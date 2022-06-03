SELECT 
    MIN(p.plan_price) AS faturamento_minimo,
    MAX(p.plan_price) AS faturamento_maximo,
    ROUND(AVG(p.plan_price), 2) AS faturamento_medio,
    SUM(p.plan_price) AS faturamento_total
FROM
    users AS u
        INNER JOIN
    plans AS p ON p.plan_id = u.user_plan_id;