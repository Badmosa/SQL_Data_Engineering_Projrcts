SELECT CAST('123' AS INTEGER);

SELECT
    job_id,
    CAST(job_work_from_home AS INT) AS job_work_from_home,
    CAST(job_posted_date AS DATE) AS job_posted_date,
    salary_year_avg
FROM
    job_postings_fact 
LIMIT 10;       