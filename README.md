# Employee Database: A Mystery in Two Parts


## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

The task of this challenge is to design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering

2. Data Analysis


## Instructions

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables.

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. 

* Import each CSV file into the corresponding SQL table. 

#### Data Analysis

The analysis will contain the following information. The queries can be found in the queries.sql file.

1. A list of the following details of each employee: employee number, last name, first name, sex, and salary.

2. A list of the first name, last name, and hire date for employees who were hired in 1986.

3. A list of the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. A list of the department of each employee with the following information: employee number, last name, first name, and department name.

5. A list of the first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. A list of all employees in the Sales department, including their employee number, last name, first name, and department name.

7. A list of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```


2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.

