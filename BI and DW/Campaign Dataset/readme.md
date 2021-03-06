This folder contains files related to this Group Assignment:

https://campus.ie.edu/webapps/blackboard/content/listContent.jsp?course_id=_114203858_1&content_id=_2246406_1&mode=reset

# Assignment content:

Data Warehouse Modelling Workgroup
Description

Each group must present a design of a data warehouse/data mart. This activity will focus on the methodologies learned in sessions 4 and 5.

Task to be done

Data Set analysis
Data Warehouse Approach Selection
Data Warehouse Design
Data Set analysis

Each group needs to review the given data set. That means:

Analyze the dataset: (1) Review the fields of the data set and its definition, (2) Understand the meaning of all of them and (3) Define user requirements considering the context of the dataset. This will give you the knowledge if this column is relevant or not for your business and can be used for the analysis. Sometimes you will have to search for specific industry information.
Detect potential data quality issues such as: (1) missing values, (2) incomplete values, (3) errors (a magnitude does not fit with the meaning of the field - example, positive values are expected and you find a negative value),... Make a decision for each one of these data quality issues. For example, I will not load the data if the magnitude is negative as we are expecting a positive value. This decision will be applied later in the data integration process.
Detect duplicates. Sometimes a data set has two or more columns that represent the same information. Again you must make a decision. What are you going to do?If you case has more than one data set, you need to think how can be combine preserving information. If you have two data sets probably they are slightly different.
Consider a sample and analyze the type for every column. That means we need to know for every column if it is a integer, number, etc. After this process, you will have a clear understanding of your data set and maybe a smaller and/or slightly different data set.
Note: some datasets have many fields. Part of your work is to propose a data mart with an specific business purpose. It is not require to work with all the fields to create the data mart, but you need to justify the decision.

Data Warehouse Approach Selection

You need to choose between using a corporate information, multidimensional approach or data vault approach in your assignment. And explain why you are considering this approach.

Data Warehouse Design

Finally it is time to propose a model. That means:

Identify the entities based on your approach. If you choose the multidimensional design. You can need to identify fact tables, dimension tables and metrics (review page 161 from the book). In the case of data vault, hubs, links and satellites (review the document I shared in the campus).
Discuss the model in paper until you reach a consensus, as we did during the sessions.
Implement the design with MySQL Workbench as we did during the sessions.
In any case, if you have more specific/detailed questions, don't hesitate to contact me. 

Tools to be used

Database: MySQL
Database Modeling: MySQL Workbench
Deliverables

Document (with data set analysis, data warehouse approach selection, Data Warehouse Design)
Data Warehouse Model (in mwb format)
Evaluation

The grade will split as follows:

Data Set analysis (30%)
Data Warehouse Approach Selection (20%)
Data Warehouse Design (50%)
Datasets

Each group has an specific dataset assigned.

# End of Assignment Content