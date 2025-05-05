# Blood Bank Database Management System

## Project Description

This repository encompasses a comprehensive three‑milestone project to design, build, and analyze a relational database for a blood bank. The system supports donor management, blood inventory tracking, transfusion requests, and analytical reporting to aid decision‑making.

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
* **Data Analysis**: Jupyter Notebook (`MILESTONE3code.ipynb`) performing exploratory analysis on donation and transfusion patterns
* **Presentation**: Slide deck summarizing key design decisions and findings (`MILESTONE3 .pptx`)
* **Tableau Dashboards**: Links to interactive dashboards (`milestone3tableaulinks.docx`)

## Prerequisites

* **Database**: MySQL Server & MySQL Workbench
* **Environment**: Python 3.8+ with libraries defined in `requirements.txt`
* **Visualization**: Tableau Desktop (for dashboards)

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

## License & Contact

This project is for academic purposes. For questions or collaboration, contact:

**Sushmitha Meduri**
MS Data Science, Seattle University
Email: [sushmitha.meduri@example.com](mailto:sushmitha.meduri@example.com)
