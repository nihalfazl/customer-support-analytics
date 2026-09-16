# Customer Support Analytics

## Overview

CloudDesk is a fictional B2B SaaS company case study focused on customer-support operations and customer experience.

This project analyzes a 12-month support-ticket dataset to identify operational pressure points, SLA risks, resolution-time patterns, escalation hotspots, support-channel response differences, and customer-satisfaction patterns.

The analysis uses **Excel, MySQL/SQL, and Power BI** to move from data preparation and validation to business insights and recommendations.

> **Data note:** The dataset is synthetic and was created for educational and portfolio purposes. It does not represent a real company's customers, employees, or operational data.

## Business Problem

CloudDesk needs to understand which types of customer-support issues are creating the greatest operational pressure and where support performance may be affecting customer experience.

The project focuses on identifying high-volume issue areas, slow-resolution categories, SLA risks, escalation patterns, response-time differences by channel, support-demand trends, and CSAT differences across issue categories.

## Project Objective

The objective is to use support-ticket data to:

- Understand the structure and quality of the support data.
- Identify major support-demand patterns.
- Measure operational KPIs.
- Analyze SLA performance and escalation risk.
- Examine resolution and response times.
- Analyze customer satisfaction.
- Translate analytical findings into practical business recommendations.

## Dataset

The clean analytical dataset contains **10,000 support tickets** covering **September 2025 through August 2026**.

Key fields include:

- Ticket ID and dates
- Customer segment
- Product
- Issue category and issue type
- Priority
- Support agent and team
- Support channel
- Response time
- Resolution time
- Ticket status
- Escalation and reopening indicators
- SLA target and SLA breach
- Customer satisfaction score

The dataset represents a fictional SaaS support environment with CloudDesk Basic, Pro, and Enterprise products; Email, Live Chat, and Web Form channels; seven support issue categories; four priority levels; and simulated support teams and agents.

## Data Quality and Preparation

The supplied raw dataset contains **10,025 rows**, while the clean analytical dataset contains **10,000 rows**.

Validation of the supplied files identified:

- 25 duplicate `Ticket_ID` values, creating 25 extra records relative to the 10,000-ticket clean baseline.
- 20 duplicate rows that were exact row-level duplicates.
- 5 additional duplicate `Ticket_ID` records that contained differences in one or more fields, such as whitespace/capitalization, CSAT, or agent information.
- Inconsistent capitalization and whitespace in categorical fields.
- Inconsistent ticket-date text formats in the raw data.
- Four zero response-time values and four negative resolution-time values in the raw data.
- Missing values in fields such as `Resolution_Date`, `Agent_ID`, `Agent_Team`, and `Customer_Satisfaction` in the raw data.

The clean dataset used for analysis contains 10,000 unique tickets and no negative resolution times or zero response times.

## Tools & Technologies

- **Microsoft Excel** — data audit, preparation, exploratory analysis, and PivotTables
- **MySQL / SQL** — business-oriented analytical queries and KPI calculations
- **Power BI** — interactive dashboard, KPI cards, slicers, and business visualizations

## Project Workflow

**Business Problem → Data Audit & Preparation → Excel Analysis → SQL Analysis → Power BI Dashboard → Insights → Business Recommendations**

## Power BI Dashboard

The dashboard provides an interactive view of support operations and customer experience.

### KPIs

- **Total Tickets:** 10,000
- **Average Resolution Time:** 7.88 hours
- **SLA Breach Rate:** 24.99%
- **Average CSAT:** 4.11 / 5, based on 5,839 rated tickets
- **Escalation Rate:** 13.02%

### Main dashboard views

- Tickets by Issue Category
- SLA Breach Rate by Priority
- Average Resolution Time by Issue Category
- Monthly Ticket Volume
- Average CSAT by Issue Category
- Tickets by Channel

Interactive slicers are provided for Ticket Date, Issue Category, Priority, Product, Channel, and Customer Segment.

See `screenshots/Dashboard.png` for the dashboard preview.

## Key Business Insights

1. **Support demand is concentrated in Technical and Account & Login issues.** These categories account for 1,944 and 1,929 tickets respectively, or 38.73% combined.

2. **Integration issues show the strongest operational pressure among issue categories.** Integration tickets average 18.22 hours to resolve and have a 31.85% escalation rate. Their average CSAT is 3.96/5, the lowest category-level CSAT in the dataset.

3. **Critical and High priority tickets have substantially higher SLA breach rates.** Critical tickets have a 79.47% breach rate and High tickets have a 47.47% breach rate.

4. **Email has the highest average first-response time.** Email averages 72.69 minutes, compared with 51.55 minutes for Web Form and 21.75 minutes for Live Chat.

5. **Monthly support volume increased over the period.** Ticket volume rose from 721 in September 2025 to 964 in August 2026, an increase of approximately 33.7%.

6. **CSAT varies across issue categories.** Integration has the lowest category-level average at 3.96/5, followed by Performance at 4.02 and Technical at 4.07. These differences should be interpreted alongside resolution time, escalation, ticket mix, and other factors rather than treated as proof of causation.

See `documentation/insights.md` for the detailed findings.

## Business Recommendations

Based on the analysis, the project recommends:

1. Review Integration support workflows, escalation patterns, documentation, and specialist-support capacity.
2. Strengthen priority-based SLA monitoring, routing, alerts, and breach reviews.
3. Investigate Email response workflows, including queueing, routing, staffing, and ticket complexity.
4. Address recurring high-volume Technical and Account & Login issues through knowledge-base content, troubleshooting guidance, self-service, automation, or product improvements where appropriate.
5. Monitor customer experience in complex support areas using CSAT together with resolution time, escalation, reopening, issue type, product, and customer segment.
6. Monitor increasing ticket demand for capacity planning and support-volume forecasting.

See `documentation/recommendations.md` for the full recommendations and limitations.

## Project Limitations

- The dataset is synthetic and designed for portfolio/educational use.
- The analysis identifies patterns and operational signals; it does not establish causal relationships.
- Recommendations should be validated against real operational context before implementation.
- No real stakeholder interviews, requirements-gathering exercise, or formal UAT was performed for this case study.

## Repository Structure

```text
customer-support-analytics/
│
├── README.md
├── data/
│   ├── raw/
│   │   └── support_tickets_raw-1.csv
│   └── cleaned/
│       └── support_tickets_clean_baseline-1.csv
├── excel/
│   └── support_tickets_Analysis.xlsx
├── sql/
│   └── Customer_Support_Analysis.sql
├── powerbi/
│   └── customer_support_dashboard.pbix
├── screenshots/
│   └── Dashboard.png
└── documentation/
    ├── data_dictionary.md
    ├── business_questions.md
    ├── insights.md
    ├── recommendations.md
    └── kpi_definitions.md
```

## Outcome

CloudDesk demonstrates an end-to-end analytics workflow that connects a business problem to data validation, Excel analysis, SQL-based investigation, Power BI reporting, business insights, and recommendations within a realistic SaaS customer-support context.
