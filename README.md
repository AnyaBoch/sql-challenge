**Module 9 - SQL - challenge**


In this project, we learned how SQL can be used to transform raw data into actionable insights by designing a relational database, 
populating it with data, and performing various queries to answer specific business questions.

Summary of Work:

	1.	Data Modeling:
 
	•	We began by analyzing the dataset, understanding relationships between tables, and creating an Entity-Relationship Diagram (ERD). 
                This step was essential for visualizing the database structure and ensuring clarity about how data is interrelated.

  
	2.	Data Engineering:
 
	•	Designed schemas for six tables: employees, departments, dept_emp, dept_manager, salaries, and titles, including specifications like primary keys, foreign keys, and data types.
	•	Paid close attention to column specifications, considering that the dataset might be updated with new information over time.
	•	Established constraints to maintain data integrity and consistency.
 
	3.	Data Import:
	•	Created the tables in PostgreSQL in the correct order to handle relationships (e.g., primary and foreign keys).
	•	Imported clean and structured data, which simplified the process and minimized issues.
 
	4.	Data Analysis:
	•	Learned to write SQL queries to retrieve insights, including:
	•	Listing employee details (e.g., salary, hire date, and department).
	•	Filtering and aggregating data based on specific criteria (e.g., names, hire dates, departments).
	•	Using JOINs to combine data from multiple tables for complex queries.
	•	Understanding and applying composite keys to create unique identifiers from multiple columns.
 
	5.	Lessons Learned:
	•	The structure of the database and tables is critical for successful navigation and operations. Without understanding the schema, queries can become confusing or inefficient.
	•	The ERD is an invaluable tool for designing and working with databases. It provides a clear roadmap of relationships, which is especially helpful for large or complex datasets.
	•	The order of table creation and data insertion is crucial. For instance, tables with foreign keys depend on the existence of referenced tables.
	•	Clean and consistent data significantly eases the process, as it eliminates the need for extensive preprocessing.

 By understanding these principles, we successfully designed, implemented, and analyzed a database system that supports ongoing updates and complex queries.
