-- Executive Sales & Revenue KPIs
SELECT
    region,
    SUM(revenue) AS total_revenue,
    SUM(profit) AS total_profit,
    ROUND(100.0 * SUM(profit) / NULLIF(SUM(revenue),0), 2) AS margin_pct,
    ROUND(100.0 * SUM(revenue) / NULLIF(SUM(target_revenue),0), 2) AS target_attainment_pct
FROM sales_performance
GROUP BY region
ORDER BY total_revenue DESC;
