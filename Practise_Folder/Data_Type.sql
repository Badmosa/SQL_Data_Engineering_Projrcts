SELECT CAST('123' AS INTEGER);

SELECT
    CAST(job_id AS VARCHAR) || '-' || CAST(company_id AS VARCHAR), --created "more" unique identifier
    CAST(job_work_from_home AS INT) AS job_work_from_home, -- from boolean to integer. A numeric value
    CAST(job_posted_date AS DATE) AS job_posted_date, -- from timestamp to date. A date value only
    CAST(salary_year_avg AS DECIMAL(10, 0)) AS salary_year_avg -- from double to decimal places
FROM
    job_postings_fact
WHERE
    salary_year_avg IS NOT NULL 
LIMIT 10;
