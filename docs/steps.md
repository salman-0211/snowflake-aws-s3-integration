# Steps Summary

1. Create S3 bucket and upload customers.csv
2. Create Snowflake account & warehouse WH_XS
3. Run sql/01_create_integration.sql (edit placeholders)
4. Configure IAM role with aws/iam_policy.json and trust_policy_template.json
5. Run sql/02_stage_and_load.sql to stage and load data
6. Run sql/03_transformations.sql for reporting
7. Connect Excel to Snowflake via ODBC and build pivot charts
