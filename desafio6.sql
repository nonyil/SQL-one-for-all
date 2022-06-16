SELECT
    MIN(PLANS.value) AS faturamento_minimo,
    MAX(PLANS.value) AS faturamento_maximo,
    ROUND(AVG(PLANS.value), 2) AS faturamento_medio,
    SUM(PLANS.value) AS faturamento_total
FROM
    plans AS PLANS
    JOIN user AS USER ON PLANS.id = USER.plan_id;