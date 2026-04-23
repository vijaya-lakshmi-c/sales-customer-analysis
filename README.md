# SALES AND CUSTOMER ANALYSIS 

## Overview 
Analysis of customer behavior, retention and lifetime value for an e-commerce company to improve customer retention and maximize revenue. 

## Business Questions 
1. **Customer Segmentation Analysis**: Who are our most valuable customers? 
2. **Cohort Analysis**: How do different customer group generate revenue?  
3. **Customer Analysis**: Which customers haven't purchased recently? 

## Analysis approach 

### 1. Customer Segmentation Analysis

Query: [1_customer_segmentation](/1_customer_segmentation.sql)

- Catgeorized customers based on total lifetime value (LTV)
- Assigned customers to High, Mid and Low value segments, 
- Calculated key metrics: Total revenue 


**📊Visualization** 

![customer segmentation analysis](/images%20/1_customer_segmentation.png)

📊 **Key findings** 
- High value segment (25% of customers) drives 66% of revenue ($135.4 M)
- Mid value segment (50% of cudtomers) generate 32% of revneue ($66.6M)
- Low value segment (25% of customers) accounts for 2% of revenue ($4.3M)

💡 **Business insights**
- High-Value (66% revenue): Offer preium memebership program to 12,372 VIP customers, as losing one customer significantly impacts revenue.
- Mid-value (32% revenue) : Create upgrade paths through personalised promotions, with potential $66.6M -> $135.4M revenue opportunity. 
- Low-value (2% revenue) : Design re-engagement campaings and price-sensitive promotions to increase purchase frequency.   

### 2. Cohort Analysis 
- Tracked revenue and customer count per cohort 
- Cohorts were grouped by year of first purchase 
- Analyzed customer retention at a cohort level 

Query: [2_cohort_analysis](/2_cohort_analysis.sql) 

**📊Visualization** 

![Cohort Analysis](/images%20/2_cohort_analysis.png)

📊 **Key findings** 

- Revenue per customer shows decreasing trend over time 
    - 2022 - 2024 cohorts are continously performing worse than earlier cohorts 
    - NOTE : Althought net revenue is increasing, this is likely due to a larger customer base, which is not reflective of customer value.

💡 **Business insights**
- Value extracted from customers is decreasing over time and needs further investigation. 
- In 2023 we saw a drop in number of customers accquired, which is concerning.
- With both lowering LTV and descreasing customer acquistion, the company is facing a potential revenue decline.

### 3. Customer Retention 

Query: [3_retention_analysis](/3_retention_analysis.sql) 

- Identified customers at risk of churning 
- Analyzed last purchase patterns 
- Calculated customer specific metrics 

**📊Visualization** 

![Customer Retention](/images%20/3_customer_churn_cohort_year.png)

📊 **Key findings** 

- Customer churn stabilizes at approximately 90% within 2–3 years, indicating a consistent long-term retention pattern.
- Retention rates remain low at 8–10% across all cohorts, suggesting a systemic issue rather than one limited to specific time periods.
- Recent cohorts (2022–2023) exhibit similar churn behavior, implying that without targeted intervention, future cohorts are likely to follow the same trajectory.

💡 **Business insights**
- Improve early-stage engagement (first 1–2 years) through stronger onboarding, loyalty programs, and personalized offers to increase long-term retention.
- Prioritize win-back campaigns for high-value churned customers, as targeted reactivation is likely to generate higher ROI than broad retention strategies.
- Implement early churn prediction mechanisms to identify at-risk customers and proactively intervene before they become inactive.

## Stratergic Recommendations 

1. **Customer Value Optimization** (Customer Segmentation)

- Launch VIP program for 12,372 high-value customers (66% revenue)
- Create personalized upgrade paths for mid-value segment ($66.6M → $135.4M opportunity)
- Design price-sensitive promotions for low-value segment to increase purchase frequency

2. **Cohort Performance Strategy** (Customer Revenue by Cohort)
- Target 2022-2024 cohorts with personalized re-engagement offers
- Implement loyalty/subscription programs to stabilize revenue fluctuations
- Apply successful strategies from high-spending 2016-2018 cohorts to newer customers

3. **Retention & Churn Prevention** (Customer Retention)

- Strengthen first 1-2 year engagement with onboarding incentives and loyalty rewards
- Focus on targeted win-back campaigns for high-value churned customers
- Implement proactive intervention system for at-risk customers before they lapse

## Technical Details

- **Database**: PostgreSQL
- **Analysis Tools**: PostgreSQL, DBeaver, PGadmin
-**Visualization**: ChatGPT
