# snowflake-aws-s3-integration
Snowflake + AWS S3 integration : storage integration, stage, COPY INTO, IAM JSON, Excel reporting.

# Snowflake + AWS S3 Demo

This repository documents a small end-to-end demo: connecting Snowflake (hosted on AWS) to an S3 bucket, staging and loading CSV data, validating ingestion, and connecting Excel via ODBC for reporting.

## What’s included
- `sql/` — SQL scripts used in the demo
  - `01_create_integration.sql` — create storage integration
  - `02_stage_and_load.sql` — file format, stage, LIST, COPY INTO
  - `03_transformations.sql` — sample ETL transformations
- `aws/` — AWS JSON templates
  - `iam_policy.json` — read-only S3 policy
  - `trust_policy_template.json` — trust policy template for Snowflake (placeholders)
- `docs/` — short docs and how-to notes
- `screenshots/` — (upload screenshots here: stage/list/select, IAM trust, Excel pivot)
- `LICENSE` — (optional; add if you want)

## Quick instructions
1. Create an S3 bucket and upload `customers.csv`.
2. Create a Snowflake account (Cloud: AWS) and a small warehouse `WH_XS`.
3. Run `sql/01_create_integration.sql` (edit placeholders) to create storage integration in Snowflake.
4. In AWS create an IAM role, attach the `aws/iam_policy.json` policy and update the trust policy with values shown by `DESC INTEGRATION`.
5. Run `sql/02_stage_and_load.sql` to create stage, list files and COPY INTO a table.
6. Connect Excel via ODBC (create DSN `SnowflakeDSN`) and load `CUSTOMERS_S3` to build a Pivot Chart.

## Security notes
- Do **not** commit AWS secrets, Snowflake passwords, or any external_id/ARNs. Use placeholders in the repo and redact screenshots before posting publicly.

## Contact / Author
Mohd Salman Baba — Snowflake + AWS S3 demo.

