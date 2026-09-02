SHOW TABLES;

SELECT *
FROM job_postings_fact
LIMIT 10;

SELECT 
    job_title_short, 
    job_location
FROM 
    job_postings_fact
WHERE
    job_title_short = 'Data Engineer'
AND    
    job_location = 'New York, NY'
LIMIT 10;