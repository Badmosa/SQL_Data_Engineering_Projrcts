-- Question: What are the most in-demand skills for data engineers?
-- • Identify the top 10 in-demand skills for data engineers
-- • Focus on remote job postings
-- • Why?
-- • Retrieves the top 10 skills with the highest demand in the remote job market, providing insights into the most valuable skills for data engineers seeking remote work
SELECT *
FROM
    job_postings_fact AS jpf
iNNER JOIN
    skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
INNER JOIN
    skills_dim AS sd
    ON sjd.skill_id = sd.skill_id
LIMIT 10;


SELECT 
    sd.skills,
    COUNT(jpf.*) AS demand_count
FROM
    job_postings_fact AS jpf
iNNER JOIN
    skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
INNER JOIN
    skills_dim AS sd
    ON sjd.skill_id = sd.skill_id
GROUP BY
    sd.skills
ORDER BY
    demand_count DESC        
LIMIT 10;  

-- Top in-demand skills for data engineers in remote job postings--
SELECT 
    sd.skills,
    COUNT(jpf.*) AS demand_count
FROM
    job_postings_fact AS jpf
iNNER JOIN
    skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
INNER JOIN
    skills_dim AS sd
    ON sjd.skill_id = sd.skill_id
WHERE
    jpf.job_title_short = 'Data Engineer'
    AND jpf.job_work_from_home = TRUE
GROUP BY
    sd.skills
ORDER BY
    demand_count DESC        
LIMIT 10;  

/*
┌────────────┬──────────────┐
│   skills   │ demand_count │
│  varchar   │    int64     │
├────────────┼──────────────┤
│ sql        │        29221 │
│ python     │        28776 │
│ aws        │        17823 │
│ azure      │        14143 │
│ spark      │        12799 │
│ airflow    │         9996 │
│ snowflake  │         8639 │
│ databricks │         8183 │
│ java       │         7267 │
│ gcp        │         6446 │
└────────────┴──────────────┘
*/

/*
Key Observations

1. SQL is the most in-demand skill
   - SQL leads with 29,221 demand counts.
   - Python follows closely with 28,776.
   - The gap is only 445, showing that both are highly important.

2. Cloud skills are strongly represented
   - AWS: 17,823
   - Azure: 14,143
   - GCP: 6,446
   - AWS has the highest demand among the three major cloud platforms.

3. Big data and data engineering tools are also in demand
   - Spark: 12,799
   - Airflow: 9,996
   - Snowflake: 8,639
   - Databricks: 8,183
   
   This suggests that employers are looking beyond basic SQL/Python toward tools used for data pipelines, distributed processing, and cloud data platforms.

4. Java remains relevant
   - Java appears with 7,267 demand counts, placing it above GCP but below the major data-engineering tools.
*/