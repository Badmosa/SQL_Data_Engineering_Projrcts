--NOT RUNNED--
SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short,
    jpf.salary_year_avg,
    JPF.job_location,
    CD.company_id
FROM
    job_postings_fact AS jpf
LEFT JOIN
    company_dim AS cd 
    ON jpf.company_id = cd.company_iD;

-- Left join-- runned--
SELECT
    jpf.*,
    cd.*
FROM
    job_postings_fact AS jpf
LEFT JOIN
    company_dim AS cd 
    ON jpf.company_id = cd.company_iD
LIMIT 10;

--- Trying this out-- it worked--
SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short,
    jpf.salary_year_avg,
    JPF.job_location,
    CD.company_id
FROM
    job_postings_fact AS jpf
LEFT JOIN
    company_dim AS cd 
    ON jpf.company_id = cd.company_iD
LIMIT 10;

SELECT
    COUNT(*)
FROM
    job_postings_fact;


-- Right join-- runned--
SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short,
    jpf.salary_year_avg,
    JPF.job_location,
    CD.company_id
FROM
    job_postings_fact AS jpf
RIGHT JOIN
    company_dim AS cd 
    ON jpf.company_id = cd.company_iD
LIMIT 10;

-- Inner join-- runned-- This is the default join of SQL. So, Writing 'JOIN' WORKS JUST LIKE 'INNER JOIN'-- but its good to specify.
SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short,
    jpf.salary_year_avg,
    JPF.job_location,
    CD.company_id
FROM
    job_postings_fact AS jpf
INNER JOIN
    company_dim AS cd 
    ON jpf.company_id = cd.company_iD
LIMIT 10;

--- Full outer join-- runned--
--returns all records when there is a match in either left (job_postings_fact) or right (company_dim) table records. If there is no match, the result is NULL on the side that does not have a match.
--Full Join also works and commonly used-- but not in MYSQL--
SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short,
    jpf.salary_year_avg,
    JPF.job_location,
    CD.company_id
FROM
    job_postings_fact AS jpf
FULL OUTER JOIN
    company_dim AS cd 
    ON jpf.company_id = cd.company_iD
LIMIT 10;

SELECT *
FROM
    skills_job_dim
LIMIT 10;

SELECT *
FROM
    skills_dim
LIMIT 10;

-- Preserving * values from fact table and joining with dimension tables to get the skill names-- runned--
SELECT
    jpf.job_id,
    jpf.job_title_short,
    sJd.skill_id,
    sd.skills
FROM
    job_postings_fact AS jpf
LEFT JOIN
    skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
LEFT JOIN
    skills_dim AS sd
    ON sjd.skill_id = sd.skill_id --; to see all values--
LIMIT 10;

--Inner Join-- checking maching value in table A and table B
SELECT
    jpf.job_id,
    jpf.job_title_short,
    sJd.skill_id,
    sd.skills
FROM
    job_postings_fact AS jpf
INNER JOIN
    skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
INNER JOIN
    skills_dim AS sd
    ON sjd.skill_id = sd.skill_id --; to see all values--
LIMIT 10;