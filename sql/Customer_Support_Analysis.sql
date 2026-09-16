CREATE database customer_support_analytics;
use customer_support_analytics;
select count(*) from support_tickets_clean_baseline;
select* from support_tickets_clean_baseline LIMIT 10;
-- 01. Ticket Volume by Issue Category
SELECT
    Issue_Category,
    COUNT(*) AS Ticket_Volume
FROM support_tickets_clean_baseline
GROUP BY Issue_Category
ORDER BY Ticket_Volume DESC;


-- 02. Ticket Volume by Priority

SELECT
    Priority,
    COUNT(*) AS Ticket_Volume
FROM support_tickets_clean_baseline
GROUP BY Priority
ORDER BY Ticket_Volume DESC;

-- 03. Ticket Volume by Channel

SELECT
    Channel,
    COUNT(*) AS Ticket_Volume
FROM support_tickets_clean_baseline
GROUP BY Channel
ORDER BY Ticket_Volume DESC;

-- 04. Average Resolution Time by Issue Category

SELECT
    Issue_Category,
    ROUND(AVG(Resolution_Time_Hours), 2) AS Avg_Resolution_Hours
FROM support_tickets_clean_baseline
WHERE Resolution_Time_Hours IS NOT NULL
GROUP BY Issue_Category
ORDER BY Avg_Resolution_Hours DESC;

-- 05. Average Resolution Time by Priority

SELECT
    Priority,
    ROUND(AVG(Resolution_Time_Hours), 2) AS Avg_Resolution_Hours
FROM support_tickets_clean_baseline
WHERE Resolution_Time_Hours IS NOT NULL
GROUP BY Priority
ORDER BY Avg_Resolution_Hours DESC;


-- 06. SLA Breach Rate

SELECT
    SLA_Breached,
    COUNT(*) AS Ticket_Count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM support_tickets_clean_baseline), 2) AS Percentage
FROM support_tickets_clean_baseline
GROUP BY SLA_Breached
ORDER BY Percentage DESC;

SELECT
    Priority,
    COUNT(*) AS Ticket_Count,
    ROUND(
        SUM(CASE WHEN SLA_Breached = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS SLA_Breach_Rate
FROM support_tickets_clean_baseline
GROUP BY Priority
ORDER BY SLA_Breach_Rate DESC;


SELECT
    Issue_Category,
    COUNT(*) AS Ticket_Count,
    ROUND(
        SUM(CASE WHEN Escalated = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Escalation_Rate
FROM support_tickets_clean_baseline
GROUP BY Issue_Category
ORDER BY Escalation_Rate DESC;

SELECT
    Channel,
    COUNT(*) AS Ticket_Count,
    ROUND(AVG(Response_Time_Minutes), 2) AS Avg_Response_Minutes
FROM support_tickets_clean_baseline
WHERE Response_Time_Minutes IS NOT NULL
GROUP BY Channel
ORDER BY Avg_Response_Minutes DESC;

SELECT
    Issue_Category,
    COUNT(Customer_Satisfaction) AS CSAT_Responses,
    ROUND(AVG(Customer_Satisfaction), 2) AS Avg_CSAT
FROM support_tickets_clean_baseline
WHERE Customer_Satisfaction IS NOT NULL
GROUP BY Issue_Category
ORDER BY Avg_CSAT ASC;

SELECT
    Reopened,
    COUNT(*) AS Ticket_Count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM support_tickets_clean_baseline),
        2
    ) AS Percentage
FROM support_tickets_clean_baseline
GROUP BY Reopened
ORDER BY Percentage DESC;

SELECT
    DATE_FORMAT(Ticket_Date, '%Y-%m') AS Month,
    COUNT(*) AS Ticket_Count
FROM support_tickets_clean_baseline
GROUP BY Month
ORDER BY Month ASC;

SELECT
    DATE_FORMAT(Ticket_Date, '%Y-%m') AS Month,
    COUNT(*) AS Resolved_Tickets,
    ROUND(AVG(Resolution_Time_Hours), 2) AS Avg_Resolution_Hours
FROM support_tickets_clean_baseline
WHERE Resolution_Time_Hours IS NOT NULL
GROUP BY Month
ORDER BY Month ASC;

SELECT
    CASE
        WHEN Resolution_Time_Hours < 4 THEN 'Under 4 Hours'
        WHEN Resolution_Time_Hours < 8 THEN '4–8 Hours'
        WHEN Resolution_Time_Hours < 24 THEN '8–24 Hours'
        ELSE '24+ Hours'
    END AS Resolution_Band,
    COUNT(Customer_Satisfaction) AS CSAT_Responses,
    ROUND(AVG(Customer_Satisfaction), 2) AS Avg_CSAT
FROM support_tickets_clean_baseline
WHERE Customer_Satisfaction IS NOT NULL
GROUP BY Resolution_Band
ORDER BY Avg_CSAT ASC;


SELECT
    Issue_Category,
    COUNT(*) AS Ticket_Count,
    ROUND(AVG(Resolution_Time_Hours), 2) AS Avg_Resolution_Hours,
    ROUND(
        SUM(CASE WHEN Escalated = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Escalation_Rate,
    ROUND(AVG(Customer_Satisfaction), 2) AS Avg_CSAT
FROM support_tickets_clean_baseline
GROUP BY Issue_Category
ORDER BY Avg_CSAT ASC;

SELECT
    Priority,
    COUNT(*) AS Ticket_Count,
    ROUND(AVG(SLA_Target_Hours), 2) AS Avg_SLA_Target_Hours,
    ROUND(
        SUM(CASE WHEN SLA_Breached = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS SLA_Breach_Rate
FROM support_tickets_clean_baseline
GROUP BY Priority
ORDER BY SLA_Breach_Rate DESC;

SELECT
 COUNT(customer_satisfaction) AS 
 CSAT_RESPONSE,
 round(AVG(customer_satisfaction),2)
AS Avg_CSAT
FROM  support_tickets_clean_baseline;

SELECT
    Customer_Satisfaction,
    COUNT(*) AS Count
FROM support_tickets_clean_baseline
GROUP BY Customer_Satisfaction
ORDER BY Customer_Satisfaction;

SELECT
    COUNT(*) AS Total_Rows,
    COUNT(Customer_Satisfaction) AS Non_Null_CSAT,
    SUM(CASE WHEN Customer_Satisfaction IS NULL THEN 1 ELSE 0 END) AS Null_CSAT,
    SUM(CASE WHEN Customer_Satisfaction = 0 THEN 1 ELSE 0 END) AS Zero_CSAT
FROM support_tickets_clean_baseline;

SELECT
    COUNT(Customer_Satisfaction) AS CSAT_Responses,
    ROUND(AVG(Customer_Satisfaction), 2) AS Avg_CSAT
FROM support_tickets_clean_baseline
WHERE Customer_Satisfaction > 0;