SELECT 
    job_id,
    job_title_short,
    salary_year_avg,
    company_id
FROM
    job_postings_fact
LIMIT 10;

SELECT 
    company_id,
    name
FROM
    company_dim
LIMIT 10;

SELECT  *
FROM
    COMPANY_dim
WHERE
    name in ('Facebook', 'Metal', 'Google', 'Amazon', 'Apple');


SELECT *
FROM
    skills_job_dim
LIMIT 5;

SELECT *
FROM
    skills_dim
LIMIT 5;

-- Inspecting Meta Data of the job_postings_fact table--
--Schema of the job_postings_fact table--
SELECT *
FROM
    information_schema.tables;
--schema more argument--data__jobs--
SELECT *
FROM
    information_schema.tables
WHERE
    table_catalog = 'data_jobs';

--columns--
    SELECT *
FROM
    information_schema.columns
WHERE
    table_catalog = 'data_jobs';

--views--
SELECT *
FROM
    information_schema.views
WHERE
    table_catalog = 'data_jobs';


SELECT *
FROM
    information_schema.table_constraints
WHERE
    table_catalog = 'data_jobs';


SELECT *
FROM
    information_schema.key_column_usage
WHERE
    table_catalog = 'data_jobs';

--Meta data of the table job_postings_fact--
PRAGMA SHOW_tables;

PRAGMA SHOW_tables_expanded;

-- TO DESCRIBE A TABLE IN SQL, YOU CAN USE THE DESCRIBE COMMAND-- TO CHECk "data types"
DESCRIBE job_postings_fact;

