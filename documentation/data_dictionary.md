Data Dictionary

The following dictionary documents the fields used in the CloudDesk synthetic customer-support dataset.

Column

Definition

Data Type

Example

Notes

Ticket_ID

Unique ticket identifier

Text

TKT-000001

Unique

Ticket_Date

Date ticket was created

Date

2025-09-15

Required

Resolution_Date

Date ticket was resolved/closed

Date

2025-09-15

Blank for unresolved

Customer_ID

Customer identifier

Text

CUST-01042

Repeat customers allowed

Customer_Segment

Customer business segment

Text

SMB

SMB / Mid-Market / Enterprise

Product

CloudDesk product involved

Text

CloudDesk Pro

Basic / Pro / Enterprise

Issue_Category

Broad support issue category

Text

Technical

7 categories

Issue_Type

Specific support issue

Text

Bug/Error

Mapped to category

Priority

Support priority

Text

High

Low / Medium / High / Critical

Agent_ID

Assigned support agent

Text

AG-17

30 simulated agents

Agent_Team

Support team

Text

Technical Support

General / Technical / Specialist

Channel

Customer contact channel

Text

Live Chat

Email / Live Chat / Web Form

Response_Time_Minutes

Minutes to first response

Number

18.4

Positive value

Resolution_Time_Hours

Hours to resolution

Number

7.25

Positive value

Status

Current ticket status

Text

Resolved

Open / In Progress / Resolved / Closed

Escalated

Whether ticket was escalated

Text

No

Yes / No

Reopened

Whether ticket was reopened

Text

No

Yes / No

SLA_Target_Hours

Resolution target based on priority

Number

8

Critical 4 / High 8 / Medium 24 / Low 48

SLA_Breached

Whether ticket exceeded SLA target

Text

No

Yes / No

Customer_Satisfaction

Customer satisfaction score

Number

4

1–5; may be blank

Dataset Context

Dataset purpose: synthetic SaaS support data for educational and portfolio use.

Analytical dataset size: 10,000 tickets.

Coverage: September 2025 through August 2026.

Products: CloudDesk Basic, CloudDesk Pro, and CloudDesk Enterprise.

Channels: Email, Live Chat, and Web Form.

Issue categories: Account & Login, Billing, Technical, Performance, Integration, Feature Request, and General Inquiry.

Priority levels: Low, Medium, High, and Critical.
