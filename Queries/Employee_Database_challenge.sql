-- Deliverable 1: The Number of Retiring Employees by Title.

SELECT e.emp_no,
	   e.first_name,
	   e.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date
INTO retirement_titles
FROM employees AS e 
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Remove duplicate entries in the retirement_titles table.
-- Use Dictinct with Orderby to remove duplicate rows.

SELECT DISTINCT ON (emp_no) emp_no,
		first_name,
		last_name,
		title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC,
to_date DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire.

SELECT COUNT(title) AS count,
			title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;


-- Deliverable 2: The Employees Eligible for the Mentorship Program.

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (ti.to_date = '9999-01-01')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, de.from_date DESC;


-- Deliverable 3: Bonus Queries.

-- Count of eligible mentors by their title.

SELECT COUNT (emp_no) AS employee_count,
			  title
FROM mentorship_eligibilty
GROUP BY title
ORDER BY "employee_count" DESC;

-- Count of number of employees who are retiring.

SELECT COUNT (title) AS retiring_titles
FROM unique_titles;

-- Number of employees eligible for mentorship.

SELECT COUNT (emp_no) AS eligible_mentees
FROM mentorship_eligibilty;







			   

					



