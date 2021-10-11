# Pewlett-Hackard-Analysis


## Project Overview

The purpose of this project is to address the ageing workforce in the Pewlett Hackard company. For this we have to find out the employees which are retiring soon as per their titles  and identify the employees who are eligible to participate in a mentorship program .
Inorder to carry out our analysis we have used **PostgreSQL** and **PgAdmin** interface to create our database and write SQL statements to perform our analysis. We will be importing and exporting our analysis data in the CSV files using PgAdmin. 

Pewlett Hackard currently stores their employee data into 6 different csv files. Below is the Entity Relationship Diagram (ERD) of these files :

<img width="613" alt="Screen Shot 2021-10-07 at 3 33 03 PM" src="https://user-images.githubusercontent.com/88418201/136471231-ca525263-26fc-40b5-a1ea-56d7150d8d9c.png">

## Results

1. While fetching the number of retiring employees (or the “silver tsunami's") by their title we found that there were many duplicate rows with employees having one or more titles.

<img width="700" alt="Screen Shot 2021-10-07 at 3 50 55 PM" src="https://user-images.githubusercontent.com/88418201/136472970-de17f5b9-30e2-4701-b919-47ab7c6651d7.png">

2. Inorder to remove the duplicate list of employees we used DISTINCT ON to fetch the employees with the most recent job title to create a unique list of retiring employees.
    * There are 90,398 employees who are likely to retire soon.

<img width="610" alt="Screen Shot 2021-10-07 at 3 57 17 PM" src="https://user-images.githubusercontent.com/88418201/136473460-aa58219b-c77f-4fa3-a137-00c704b5d3bf.png">

3. Retiring employees count as per their titles.

<img width="260" alt="Screen Shot 2021-10-07 at 4 08 09 PM" src="https://user-images.githubusercontent.com/88418201/136474215-9d30695f-134f-4377-8a35-48c4047a61e1.png">

4. There are 1,549 employees born in 1965 who are eligible for mentorship program.

<img width="700" alt="Screen Shot 2021-10-07 at 4 15 24 PM" src="https://user-images.githubusercontent.com/88418201/136474749-d710f95a-609c-468c-ad9e-a71a81ac3de4.png">

## Summary

### 1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The "silver tsunami" will have a significant impact of leaving 90,398 vacancies.

### 2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

No, by using the criteria of those born in 1965, we have 1,549 employees who are eligible to participate in a mentorship program.

## Future Area Of Focus

We created some more queries to further investigate the gap. 

The below two charts compares the counts by titles of the retiring and mentor eligible employees. There is a reasonable ratio gap between the titles as from the tables we can see that there are 29,414 employees who are retiring under Senior Engineer department and only 529 of them are eligible for mentorship program. In the similar way there is a huge gap in the numbers for all the other counts by their titles. However, it is concerning that no managers met the mentor eligibility requirement. Further discussion is needed to fill the manager gap.

<img width="700" alt="Screen Shot 2021-10-08 at 12 13 28 PM" src="https://user-images.githubusercontent.com/88418201/136613349-fe6607f1-8276-4baf-a0b5-992bc33c0c19.png">

<img width="400" alt="Screen Shot 2021-10-08 at 12 14 52 PM" src="https://user-images.githubusercontent.com/88418201/136613485-4735c057-8777-4771-998b-dd54eebefa93.png">

From the below to comparison we can infer that there are total of 90,398 employees who will be retiring from their titles soon from Pewlett Hackard and by creating a mentoring program only 1,549 mentees can study which significantly widens the mentor-mentee gap as there are 90,398 employees retiring and only 1,549 of them can be eligible for mentorship. Therefore, for running a successful mentorship program Pewlett Hackard can narrow down their mentorship eligibility criteria for being around age 35 when they started their current job title. In this way they can narrow down the mentor-mentee gap.

<img width="550" alt="Screen Shot 2021-10-08 at 12 29 36 PM" src="https://user-images.githubusercontent.com/88418201/136615126-f0d52a53-4c3b-4fe2-af9f-c6a81411c24a.png">

<img width="550" alt="Screen Shot 2021-10-08 at 12 30 20 PM" src="https://user-images.githubusercontent.com/88418201/136615179-7d8c11a4-b4c4-484a-8ded-1b8e79add340.png">
