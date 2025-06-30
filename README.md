# Blood Bank Database Management System

## Project Description

A full-stack database management system designed to optimize blood bank operations. This solution integrates MySQL database design with Python analytics and Tableau visualization to support donor management, inventory tracking, and transfusion coordination.

![image](https://github.com/user-attachments/assets/eb7d5278-40f8-4ef5-bd76-79f8bb139aec)


## Key Features
- **Real-time Donor Management**: Track donor profiles, blood types, and donation history
- **Supply-Demand Analytics**: Monitor blood inventory vs hospital requests
- **Compatibility Engine**: Built-in blood type compatibility checks
- **Trend Analysis**: Visualize donation patterns and request trends
- **Automated Reporting**: Generate operational insights with one click

## Technology Stack
| Component               | Technology          |
|-------------------------|---------------------|
| **Database**            | MySQL 8.0           |
| **Backend**             | Python 3.10         |
| **Frontend**            | Tkinter GUI         |
| **Visual Analytics**    | Tableau Public      |
| **Data Modeling**       | MySQL Workbench     |

## System Architecture
![architecture](https://github.com/user-attachments/assets/0fd4c43e-84c0-4a66-978f-79839f6b142a)

## Tableau Dashboards
Access pre-built visualizations:
* **Count of Blood Bags**: https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/BloodGroup-CountBlood?publish=yes
* **Total Donations - Donation Camp**: https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/DonationCamp-CountBlood?publish=yes
* **Blood Request Trend**: https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/BloodRequestDates-CountBloodRequests?publish=yes
* **Blood requests - each Hospital**: https://public.tableau.com/app/profile/janani.krishnamurthy2697/viz/BloodGroup-CountBlood/Hospital-CountBloodRequests?publish=yes

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

## Prerequisites

* **Database**: MySQL Server & MySQL Workbench
* **Environment**: Python 3.8+ with libraries defined in `requirements.txt`
* **Visualization**: Tableau Desktop (for dashboards)

## Application Architecture:
* Built with Python's Tkinter for the GUI framework
* MySQL connector for real-time database operations
* Integration with Tableau Public for visual analytics
* Responsive UI with full-screen capability and splash screen
  
## Setup & Usage

1. **Schema Import**

   * Open `Final_ER_Model.mwb` in MySQL Workbench and forward engineer to create the database schema.
2. **Database Creation**

   ```bash
   mysql -u <username> -p < MILESTONE2QUERY.sql
   ```
3. **Data Loading**

   ```bash
   mysql -u <username> -p < MILESTONE3DUMP.sql
   ```
4. **Run Analysis**

   ```bash
   pip install -r requirements.txt
   jupyter notebook MILESTONE3code.ipynb
   ```
5. **View Dashboards**

   * Open Tableau and connect to the live database, or use links in `milestone3tableaulinks.docx`.




## Contributing

Contributions and feedback are welcome. Please submit issues or pull requests to suggest enhancements to the schema, queries, or analytics.
