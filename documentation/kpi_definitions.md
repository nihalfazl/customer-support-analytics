KPI Definitions

These KPIs are used in the CloudDesk Power BI dashboard and supporting analysis.

KPI

Definition

Calculation / Logic

Business Purpose

Total Tickets

Number of support-ticket records in the clean analytical dataset

Count of ticket records

Measures overall support demand

Average Resolution Time

Average time taken to resolve tickets with a recorded resolution time

Average of Resolution_Time_Hours

Measures support-resolution efficiency

SLA Breach Rate

Percentage of tickets where the SLA was breached

SLA-breached tickets ÷ total tickets × 100

Measures SLA performance

Average CSAT

Average customer satisfaction among tickets with a recorded rating

Average Customer_Satisfaction for rated tickets

Measures customer experience

Escalation Rate

Percentage of tickets marked as escalated

Escalated tickets ÷ total tickets × 100

Indicates the level of cases requiring escalation

CloudDesk Dashboard Values

KPI

Value

Total Tickets

10,000

Average Resolution Time

7.88 hours

SLA Breach Rate

24.99%

Average CSAT

4.11 / 5

CSAT Responses

5,839

Escalation Rate

13.02%

Important Measurement Notes

CSAT

The dataset contains missing CSAT values for tickets without a customer rating. The overall CSAT calculation uses the 5,839 rated tickets rather than treating unrated tickets as satisfaction scores.

SLA

SLA targets are defined by priority:

Critical: 4 hours

High: 8 hours

Medium: 24 hours

Low: 48 hours

Resolution Time

Average resolution time is based on tickets with a recorded resolution time. The clean analytical dataset contains no negative resolution times.

These KPI definitions describe the calculations used in the portfolio analysis; they do not represent real CloudDesk production metrics.
