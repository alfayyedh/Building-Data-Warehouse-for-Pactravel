# Building-Data-Warehouse-for-Pactravel
This is a project of building a data warehouse using python, luigi, and dbt.
The case study is about Pactravel, a travel agency which runs a business on flight and hotel reservations. As its business grows, Pactravel needs a data warehouse to ease its team in analyzing the trends in flight and hotel reservations. To fulfill Pactravel’s needs, some steps will be taken in purpose to gain the objectives of Pactravel’s needs and determine the design of data warehouse.

A full story can be checked on Medium Article by clicking following link 
[Medium Article](https://medium.com/@alfayyedh/data-warehouse-project-for-pactravel-travel-agency-ef8604080e1e)

## Objective
In this explanation, I will show:
1. Workflow of data pipeline
2. How to run the project
3. What are the features in the project
4. Showcase of final data warehouse

   
## Workflow of Data Pipeline
![image](https://github.com/user-attachments/assets/55a27136-a53c-4c4a-b4dd-23ac80c8c7b3)

- **Extract**\
Extracting data from data source to data warehouse is handled by python.

- **Load**\
Loading to data warehouse schema is handled by python.

- **Transform**\
Loading to data warehouse schema is handled by dbt. Transformed data is the data which can be used by user in performing analytical process.

## How to Run The Project
Let's run the project!

### Requirements
- OS
  - Linux
  - WSL (Windows Subsystem for Linux)

- Tools
  - Dbeaver
  - Docker
  - DBT
  - Cron

- Programming Language
  - Python
  - SQL

- Python Library
  - Pandas
  - Luigi
  - Sentry-SDK

- Platforms
  - Sentry

### Clone the dataset
Clone or download the repository to gain the dataset.
```
git lfs clone git@github.com:Kurikulum-Sekolah-Pacmann/pactravel-dataset.git
```

### Set up Project Environment
Create and activate python virtual environment to isolate dependencies.
```
python -m venv your_project_name         
source your_project_name/bin/activate
```

### Install requirement.txt
Install dependencies from _requirement.txt_ 
```
pip install -r requirements.txt
```

### Create .env file
Create .env file to store the project credentials.

```
# Source
SRC_POSTGRES_DB=[YOUR SOURCE DB NAME]
SRC_POSTGRES_HOST=localhost
SRC_POSTGRES_USER=[YOUR USERNAME]
SRC_POSTGRES_PASSWORD=[YOUR PASSWORD]
SRC_POSTGRES_PORT=[YOUR PORT]

# DWH
DWH_POSTGRES_DB=[YOUR DWH DB NAME] 
DWH_POSTGRES_HOST=localhost
DWH_POSTGRES_USER=[YOUR USERNAME]
DWH_POSTGRES_PASSWORD=[YOUR PASSWORD]
DWH_POSTGRES_PORT=[YOUR PORT]
```

## Features
### Scheduling
Cron as scheduler/
- Set up cron job
  ```
  # Open crontab
  crontab -e
  ```
  ```
  # In crontab editor

  # Set the schedule like this to run the pipeline EVERY HOUR
  0 * * * * /PATH/TO/YOUR/SHELL/SCRIPT/SHELL_SCRIPT_NAME.sh
  ```

## Showcasing the data warehouse
### Revenue Record
![image](https://github.com/user-attachments/assets/388f3518-264a-46a3-b4d0-e00a5a6af28a)

### Track Daily Bookings
- Flight Bookings
  ![image](https://github.com/user-attachments/assets/26fb2a0b-7042-400a-ac07-86c6ef62a691)

- Hotel Bookings
  ![image](https://github.com/user-attachments/assets/efda37b3-935a-4941-8f3d-7f6bdcb44ea1)










