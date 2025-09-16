# sql-showcase
My SQL portfolio : real projects, clean queries, and business-focused analysis

### Project 1: Email Session Analysis by Browser

This SQL query analyzes email sending activity per account, grouped by month. It calculates how active each account was in a given month and what percentage of total emails they contributed.

#### What It Does

- Converts raw timestamps into readable dates and months
- Groups email activity by account and month
- Calculates the percentage of emails sent by each account relative to the total for that month
- Identifies the first and last email sent by each account in each month

#### Why It Matters

This kind of analysis helps understand user engagement patterns over time. By seeing how active each account is, we can identify power users, seasonal trends, or accounts that may need re-engagement.

#### Tools Used

- Google BigQuery
- SQL (CTEs, window functions, date formatting)

#### Output

The result includes:
- `sent_month`
- `id_account`
- `sent_msg_percent_from_this_month`
- `first_sent_date`
- `last_sent_date`

<img width="697" height="278" alt="image" src="https://github.com/user-attachments/assets/dcdaa7ce-b7ea-47cd-880a-c313b5e8750b" />

### Project 2: Session Engagement by Device

This SQL query analyzes user engagement across different devices by calculating the percentage of sessions marked as "engaged" based on event parameters.

#### What It Does

- Extracts session-level engagement signals from nested event parameters
- Calculates the number of engaged events vs total events per session
- Aggregates engagement share by device type
- Formats the result as a percentage for easy interpretation

#### Why It Matters

Understanding which devices drive the most engaged sessions helps optimize user experience and marketing strategies. This analysis supports decisions around platform prioritization and UX design.

#### Tools Used

- Google BigQuery
- SQL (CTEs, conditional aggregation, JOINs, formatting)

#### Output

The result includes:
- `device`: type of device used (e.g., mobile, desktop)
- `session_engaged_share`: percentage of engaged sessions per device

<img width="711" height="180" alt="image" src="https://github.com/user-attachments/assets/126e5350-7ab7-4a4a-b672-a06836f29166" />

### Project 3: Revenue vs Goal Fulfillment Analysis

This SQL query compares predicted revenue against paid search cost goals over time. It calculates daily and cumulative totals, and evaluates how well revenue fulfills the set goals.

#### What It Does

- Combines revenue predictions and paid search costs into a unified stream
- Aggregates daily totals for both metrics
- Calculates cumulative revenue and goal values using window functions
- Computes the percentage of goal fulfillment over time

#### Why It Matters

This analysis helps track performance against marketing spend targets. It provides insight into whether revenue is keeping pace with investment, and how fulfillment trends evolve day by day.

#### Tools Used

- Google BigQuery
- SQL (CTEs, UNION ALL, window functions, conditional aggregation)

#### Output

The result includes:
- `day`: calendar date
- `cumulative_revenue`: running total of predicted revenue
- `cumulative_goal`: running total of paid search cost
- `pct_cumulative_fulfillment`: percentage of goal fulfilled by revenue

<img width="695" height="354" alt="image" src="https://github.com/user-attachments/assets/d6f22ada-8a1e-4a18-ae4d-aba141e6d09d" />


