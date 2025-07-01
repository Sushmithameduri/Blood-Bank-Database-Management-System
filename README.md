# Blood Bank Database Management System
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql)](https://www.mysql.com/)
[![Python](https://img.shields.io/badge/Python-3.10-3776AB?logo=python)](https://www.python.org/)
[![Tableau](https://img.shields.io/badge/Tableau-Public-E97627?logo=tableau)](https://public.tableau.com/)

## Project Description
The Blood Bank Management System (BBMS) is an application designed to facilitate the querying and visualization of blood bank data. It provides a user-friendly interface for:
- Querying and managing blood bank data
- Accessing donor information
- Monitoring blood inventory
- Visualizing analytics through integrated Tableau dashboards
  
![image](https://github.com/user-attachments/assets/eb7d5278-40f8-4ef5-bd76-79f8bb139aec)

## Table of Contents
- [Project Description](#project-description)
- [Key Features](#key-features)
- [Technology Stack](#technology-stack)
- [System Architecture](#system-architecture)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Application Usage](#application-usage)
- [Tableau Dashboards](#tableau-dashboards)
- [Project Milestones](#project-milestones)
- [Contributing](#contributing)

## Key Features
* **Secure Database Connectivity**  
  Connect to MySQL databases with encrypted credentials for safe data access
* **Predefined Analytical Queries**  
  Execute essential blood bank operations through one-click queries
* **Integrated Data Visualization**  
  Access Tableau dashboards directly from the application interface
* **User-Friendly Interface**  
  Navigate effortlessly with a clean, responsive design


## Technology Stack
| Component               | Technology          |
|-------------------------|---------------------|
| **Database**            | MySQL 8.0           |
| **Backend**             | Python 3.10         |
| **Frontend**            | Tkinter GUI         |
| **Visual Analytics**    | Tableau Public      |
| **Data Modeling**       | MySQL Workbench     |


## System Architecture
* Built with Python's Tkinter for the GUI framework
* MySQL connector for real-time database operations
* Integration with Tableau Public for visual analytics
* Responsive UI with full-screen capability and splash screen

![deepseek_mermaid_20250701_307560](https://github.com/user-attachments/assets/8d7abbc3-ccfa-4645-b386-e43e3c0e23b6)

## Getting Started
### Prerequisites
- MySQL Server & MySQL Workbench
- Python 3.8+ 
- Libraries in `requirements.txt`

### Installation
#### Clone repository
```bash
git clone https://github.com/Sushmithameduri/Blood-Bank-Database-Management-System.git
```
#### Install dependencies
```bash
pip install -r requirements.txt
```
#### Launch Application
```bash
# Run through Jupyter
jupyter notebook MILESTONE3code.ipynb

# Or execute directly
python bbms.py
```
### Application Usage
Upon launching BBMS, you will be greeted with a login prompt to connect to your MySQL database. After a successful login, the main interface allows you to:

1. Connect to your MySQL database using secure credentials
2. Select from predefined SQL queries in the main interface
3. Access embedded Tableau visualizations for data analysis
   
![image](https://github.com/user-attachments/assets/891808a4-cc8d-403b-aeea-43c53586f9db)
![image](https://github.com/user-attachments/assets/58af2bd0-b32e-4b5d-9db8-8c6b286bd8f4)
![image](https://github.com/user-attachments/assets/94612d74-d172-4d27-8fa7-c150d9347acb)
![image](https://github.com/user-attachments/assets/193b457a-e14f-4a5c-b226-52c7203954af)
![image](https://github.com/user-attachments/assets/3da11047-5076-45a4-805d-1e33fcf877a2)
![image](https://github.com/user-attachments/assets/b25c0a83-4911-44bd-8df3-9ca31ce9431e)

## Tableau Dashboards
Access pre-built visualizations directly from the application:

| Dashboard Name | Description | Access Link |
|----------------|-------------|-------------|
| **Blood Inventory Analysis** | Visualizes blood stock composition by type | [View Dashboard](https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/BloodGroup-CountBlood) |
| **Donation Camp Performance** | Compares donation collection across camps | [View Dashboard](https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/DonationCamp-CountBlood) |
| **Request Trend Analysis** | Shows temporal patterns in blood requests | [View Dashboard](https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/BloodRequestDates-CountBloodRequests) |
| **Hospital Demand Patterns** | Analyzes blood usage across hospitals | [View Dashboard](https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/Hospital-CountBloodRequests) |

## Milestones

### Milestone 1: Conceptual Design

* **ER Diagram**: Developed in MySQL Workbench (`Final_ER_Model.mwb`)
* **Deliverables**: Conceptual schema capturing entities such as Donor, Blood Unit, Hospital, and Transfusion

### Milestone 2: Logical Implementation

* **Schema Definition**: SQL DDL scripts (`MILESTONE2QUERY.sql`) for table creation, keys, and constraints
* **Sample Queries**: DML examples illustrating common operations (e.g., registering donors, recording donations, fulfilling transfusion requests)
* **Report**: Detailed write‑up of logical design and query rationale (`MILESTONE2.pdf`)

### Milestone 3: Physical Model & Analytics

* **Data Population**: Database dump with sample data (`MILESTONE3DUMP.sql`)
* **MySQL Workbench Model**: Updated physical schema (`MILESTONE3.mwb`)
* **Application Interface**: Python GUI application (`MILESTONE3code.ipynb`) featuring:
  * Database connection management
  * Interactive query execution
  * Real-time result visualization
  * Tableau dashboard integration
* **Presentation**: Slide deck summarizing key design decisions and findings (`MILESTONE3 .pptx`)
* **Tableau Dashboards**: Links to interactive dashboards (`milestone3tableaulinks.docx`)

## Contributing
Contributions and feedback are welcome. Please submit issues or pull requests to suggest enhancements to the schema, queries, or analytics.
