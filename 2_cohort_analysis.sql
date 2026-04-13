SELECT 
	cohort_year, 
	count(distinct customerkey) AS total_customers, 
	sum(ca.total_net_revenue ) AS total_revenue,
	sum(ca.total_net_revenue ) / count(distinct customerkey) AS customer_revenue 
FROM 
	cohort_analysis ca 
WHERE 
	orderdate = first_purchase_date 
GROUP BY 
	cohort_year