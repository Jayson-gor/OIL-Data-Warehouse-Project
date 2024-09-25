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
![Uploading image.png…]()

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




