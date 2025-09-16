WITH prepared AS (
  SELECT
    id_account,
    DATE(TIMESTAMP_SECONDS(sent_date))                       AS sent_day,
    FORMAT_DATE('%Y-%m', DATE(TIMESTAMP_SECONDS(sent_date))) AS sent_month
  FROM `data-analytics-mate.DA.email_sent`
),


-- account per month
account_month_stats AS (
  SELECT
    sent_month,
    id_account,
    COUNT(*)   AS account_msg_count,
    MIN(sent_day) AS first_sent_date,
    MAX(sent_day) AS last_sent_date
  FROM prepared
  GROUP BY sent_month, id_account
)


SELECT
  sent_month,
  id_account,


  -- % of emails for account vs total for that month
  ROUND(
    account_msg_count * 1.0
    /
    SUM(account_msg_count) OVER (PARTITION BY sent_month),
    3
  ) AS sent_msg_percent_from_this_month,


  first_sent_date,
  last_sent_date


FROM account_month_stats
ORDER BY sent_month, id_account;
