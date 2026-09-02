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