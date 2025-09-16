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
