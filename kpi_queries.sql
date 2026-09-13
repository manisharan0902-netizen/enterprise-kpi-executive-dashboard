SELECT business_unit,
SUM(actual_volume) actual_volume, SUM(target_volume) target_volume,
ROUND(100.0*SUM(actual_volume)/NULLIF(SUM(target_volume),0),2) target_attainment_pct,
SUM(revenue) revenue, SUM(profit) profit, ROUND(AVG(data_quality_pct),2) avg_data_quality_pct
FROM enterprise_kpis GROUP BY business_unit ORDER BY revenue DESC;
