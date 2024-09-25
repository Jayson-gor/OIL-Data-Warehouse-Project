# PROJECT OVERVIEW
## Project Title: OIL Data Warehouse Project
## Project Description:
### This project focuses on designing and building a data warehouse system for handling financial and sales data. The primary data source was an MS Access database, which was staged in SQL Server, and then transformed and loaded into dimensional and fact tables using SSIS (SQL Server Integration Services). Incremental loading and Slowly Changing Dimensions (SCD) logic were implemented to manage updates efficiently. The entire ETL process is automated through SQL Server Agent Jobs for daily execution.


## Tools and Technologies Used
### 1. Database Management:
SQL Server Management Studio (SSMS): For database design, querying, creating tables, indexes, and managing data.
### 2. ETL Development:
SQL Server Integration Services (SSIS): For designing and managing the data pipelines. Key transformations used:
Lookup for incremental loads.
Conditional Split for SCD (Slowly Changing Dimension) logic.
Derived Column for data type transformations.
Row Count for auditing the number of new records inserted
### 3. Scheduling & Automation:
SQL Server Agent: For scheduling daily ETL jobs.
### 4. Source Control:
GitHub: For version control, documenting the project's evolution and tracking changes.
### 5. Languages:
SQL: The primary language for querying data and creating database objects.
T-SQL: Used extensively for procedural operations, control flow, and stored procedures.
### 6. Source Database:
MS Access: Initial source of data for staging in SQL Server.


## Project Workflow
### i. Data Source (MS Access):
Initial profiling and extraction of data from MS Access.
### ii. Staging Database Setup:
The staging database was created in SQL Server to hold raw data from MS Access.
Staging tables mirror the source tables for easier transformation in SSIS.
![image](https://github.com/user-attachments/assets/777057bf-b70d-4263-8b11-745e8031b8e4)

### iii. Dimension and Fact Tables Creation:
Dimensions such as Company_Dim, Currency_Dim, Date_Dim, and Product_Dim were designed to follow best practices in star schema modeling.
Fact tables, including Fact_Finance and Fact_Sales, were created with appropriate foreign keys linking to the dimension tables.
![image](https://github.com/user-attachments/assets/e632e50a-fa70-4a36-a7c3-6e44c24a1ecd)


### iv. Incremental Loads:
Lookup transformations were used to identify new and updated records for dimensions and fact tables.
Slowly Changing Dimension (SCD) logic was implemented to manage Type 1 (overwrite) and Type 2 (versioning with start/end dates) changes.
![image](https://github.com/user-attachments/assets/0bc371f7-ae8c-4bc0-ab3d-789d474a2e9a)

### v. Event Handling in SSIS:
Implemented event handling for capturing OnError, OnWarning, OnTaskFailed, and OnPostExecute in a dedicated SQL table (event_ssis).
Centralized logging ensured efficient debugging and monitoring of package execution.
![image](https://github.com/user-attachments/assets/914af0d6-0c3d-49e7-846b-2c26b6c1cb21)


### vi. Deployment of SSIS Package to SSMS:
#### SSIS Catalog Setup:
Created the SSIS catalog in SQL Server by enabling SSISDB if it wasn’t already enabled.
Deployed the SSIS package into the SSISDB catalog for centralized management and monitoring.
Created the SSIS catalog folder to organize the SSIS packages.
#### Deploying the SSIS Package:
Used the Project Deployment Model to deploy the ETL packages from Visual Studio (SSDT) to the SSIS catalog on the SQL Server instance.
Configured package parameters and connection managers to ensure the package works seamlessly across environments (development, testing, production).
#### Setting up Environments in SSISDB:
Created environment variables in the SSIS catalog for different database connections (like development and production).
Mapped the package parameters to the SSIS environment variables for easier management and reconfiguration without modifying the packages themselves
![image](https://github.com/user-attachments/assets/972b6d68-f920-4717-95d0-e77c5bb8ddf9)
![image](https://github.com/user-attachments/assets/3d969ad2-a02f-4f25-9e99-1239ab9eff86)

### vii. Execution and Performance Monitoring in SSMS for SSIS Packages
After deploying the SSIS packages to the SSISDB Catalog in SQL Server Management Studio (SSMS), it’s crucial to monitor and manage the performance of these packages during execution. SSMS provides robust tools to track, monitor, and analyze package execution via the Execution Reports and Performance Reports.
#### Execution View in SSMS
The Execution View helps track the overall status of package executions, including success, failure, and detailed error information.
#### Performance View in SSMS
The Performance View offers insights into how efficiently your SSIS packages are running. This view helps in identifying slow tasks, data bottlenecks, and areas where resource usage can be optimized.
Execution Report
![image](https://github.com/user-attachments/assets/478dafdb-fe06-4dfd-a879-ab226ceb3f7c)
Performance Report
![image](https://github.com/user-attachments/assets/5fe4a816-2fd2-4722-a851-6430ad661e31)

### viii. SQL Server Agent Job:
Created a job in SQL Server Agent to run the SSIS package daily at 1 PM.
Managed job triggers and error reporting using SQL Server Agent.

#### Setting New JOb
![image](https://github.com/user-attachments/assets/d28cd680-26b8-4861-a0fd-4a7e949ccb65)
#### Scheduling the New Job
![image](https://github.com/user-attachments/assets/201912f2-dc3c-4ac5-a452-4956abf49ebe)

## Data Warehouse Design & Data Modeling
### Star Schema Design:
The data warehouse design follows the Star Schema modeling approach, which is optimal for query performance and simplifies the reporting structure.
Fact tables store transactional data, while dimension tables provide context and descriptive attributes for the facts.
Each fact table has a surrogate key as the primary key, and foreign keys link to dimension tables.

### Dimension Tables:
Dimension tables are designed to provide context for the facts and answer the “who,” “what,” “when,” and “where” of a query.
Examples of dimension tables:
Company_Dim: Holds company-related details.
Product_Dim: Contains product descriptions and attributes.
Currency_Dim: Manages currencies and exchange rates.
Date_Dim: Contains detailed date information for filtering and aggregation.
Slowly Changing Dimensions (SCD) were implemented using Type 1 (overwrite) and Type 2 (versioning) methodologies.
Type 1 SCD was used for non-historical changes (e.g., company details).
Type 2 SCD was implemented for tracking changes over time (e.g., name changes), with fields for StartDate and EndDate to capture history.

### Fact Tables:
Fact tables hold the measures and metrics related to business processes.
Examples:
Fact_Finance: Captures financial data, including debit, credit, and balance information.
Fact_Sales: Holds sales data, including quantities sold and total sales amounts.
Each fact table contains foreign keys that reference the dimension tables, allowing for rich, detailed reporting and analysis.
Granularity:
Fact tables were designed at the transaction level to capture the finest level of detail in financial and sales processes.

### Data Normalization & Denormalization:
The data in dimension tables is denormalized for optimal query performance, reducing the need for complex joins in queries.
However, normalization was applied in the staging layer to align with the source system’s data structure (e.g., in Access DB) before loading into the data warehouse.

### Surrogate Keys:
Surrogate keys were used in the fact and dimension tables as the primary keys (e.g., CompanyKey, DateKey) to ensure data consistency and integrity. These were auto-incrementing integers, ensuring uniqueness in the data warehouse.
Natural keys from source systems (e.g., id, CurrencyID) were retained for lookup purposes but were not used as primary keys to avoid issues with changing source data.

### Hierarchies in Dimensions:
Hierarchical structures (e.g., within the date dimension for Year, Quarter, Month, Day) were implemented to facilitate drill-down reporting in the data warehouse.
Hierarchical attributes were flattened for simplicity in querying and reporting.

### Fact-Dimension Relationships:

Relationships between fact and dimension tables were maintained using foreign key constraints to ensure referential integrity.
Fact tables were designed to aggregate data from various dimensions, allowing for complex analytics (e.g., sum of sales grouped by company, product, and date).

![image](https://github.com/user-attachments/assets/c25fff28-4f32-4d94-a033-047d9e2f31d1)

## ETL Pipelines and Challenges
### ETL Pipelines Overview
ETL (Extract, Transform, Load) pipelines are a critical component of data warehousing. These pipelines are responsible for moving data from multiple sources into a centralized data warehouse. In this project, the ETL process played a key role in extracting data from an Access Database, transforming it into the required structure, and loading it into the staging tables, and then into dimension and fact tables in the data warehouse.

### Key Phases of ETL
#### 1. Extract
Data was extracted from a source system, which in this case was Microsoft Access.
Tools like SSIS were used to connect to the Access database, extract data, and load it into the staging environment.
The challenge during extraction was ensuring data quality, handling nulls, and ensuring the data types in Access were correctly mapped to SQL Server-compatible types.

### 2. Transform
This phase involved transforming the raw extracted data into a format suitable for analytical querying. In this project, transformation included:
Data cleaning: Removing duplicates, handling missing values, and standardizing inconsistent data formats (e.g., dates in different formats).
##### Data type conversions: For example, converting strings (e.g., dates stored as text) to the appropriate DATETIME format in SQL Server.
##### Business rules enforcement: For instance, ensuring that only records with the State = 'posted' in Accounts_Dim were processed.
Lookups: Joining with dimension tables like Company_Dim, Product_Dim, etc., to enrich the data.

#### Challenges
##### Data quality issues: 
The data from the source system had inconsistencies such as date formats and null values, which required transformations to be handled carefully.
##### Handling large data volumes: 
Ensuring efficient processing when dealing with large datasets and avoiding performance bottlenecks during transformation steps.
##### Incremental Loading: 
Managing incremental loads for dimensions and fact tables using lookup transformations and ensuring only new or updated records were processed.

### 3. Load
After transforming the data, it was loaded into the destination tables in the data warehouse, including dimensional tables (such as Company_Dim, Currency_Dim, Product_Dim) and fact tables (such as Fact_Finance, Fact_Stock).
In the Load step, there was a focus on:
Inserting new records into the dimension and fact tables.
Handling Slowly Changing Dimensions (SCDs), especially for dimensions like Company_Dim, where Type 1 (overwrite) and Type 2 (create new records) logic was applied based on whether values like the company name had changed.

#### Challenges
##### Handling Slowly Changing Dimensions: 
Implementing SCD Type 1 and Type 2 logic to update dimension tables while maintaining historical data was complex.
##### Ensuring Data Integrity: 
Referential integrity between dimension and fact tables had to be maintained, and relationships needed to be properly enforced during the load process.
##### Optimizing Load Performance: 
SSIS packages had to be optimized for handling large datasets efficiently.

## Challenges in ETL Pipelines
### Data Quality Issues:
The data extracted from the source systems often had inconsistencies, such as incorrect date formats, null values, and duplicate records. During the transformation phase, the ETL process was responsible for handling these inconsistencies to ensure data quality.
#### Solution:
Data cleansing during the ETL process involved using Derived Columns in SSIS to clean and standardize data formats.
Conditional splits and Lookups were used to remove duplicates and handle null values before loading into destination tables.

### Handling Slowly Changing Dimensions (SCDs):
One of the primary challenges was implementing Slowly Changing Dimensions (SCD) for dimensions like Company_Dim, which required tracking historical changes while also updating records when needed.
#### Solution:
SCD Type 1: Overwrites existing data when the record has been updated (e.g., company details changed).
SCD Type 2: Creates a new record with a new surrogate key when a historical change occurs (e.g., name changes), while marking the old record with an EndDate.
This was implemented using Conditional Splits, Lookups, and Derived Columns in SSIS, along with SQL-based updates to mark records with EndDate or insert new records.

### Performance Optimization:
As the data volumes increased, performance issues became apparent. Some transformations, particularly Lookup transformations, required optimization to avoid slowing down the ETL process.
#### Solution:
Using Partial Cache mode for large lookup datasets to ensure only necessary rows were cached, reducing memory usage.
Applying indexes on key columns in the source and destination tables to speed up lookups and joins.
Breaking the ETL pipeline into smaller, more manageable tasks and running them in parallel to improve overall performance.

### Handling Date Format Mismatches:
One major issue was dealing with inconsistent date formats in the source data, especially when the source data (from Access) had dates stored as strings, making it difficult to perform transformations or joins based on dates.
#### Solution:
TRY_PARSE and TRY_CONVERT functions were used during the transformation phase to safely convert string-based dates into DATETIME format in SQL Server.
This ensured that data was consistent and could be used for proper date-based lookups and joins.

### Incremental Loading:
Managing incremental data loads was another challenge, especially for large datasets, where loading all records at every run would have been inefficient.
#### Solution:
Control tables like LoadControl were created to store the last load time for each table.
Incremental loads were handled by querying only the new or updated records based on ModifiedDate or WriteDate columns in the source data.








