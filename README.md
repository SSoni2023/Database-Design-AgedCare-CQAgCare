#Aged Care Facility Database System (CQAgCare)

This project is a complete relational database solution designed for an aged care facility. It models and manages accommodation, care services, applications, staffing, and maintenance operations.

---

## Overview

The system handles:
- Resident onboarding and room applications
- Care contracts and service types
- Room and accommodation management
- Internal and external staff (care managers, nurses, carers, handymen)
- Repair and maintenance tracking
- Complex reporting and data querying

---

## Project Structure

### Database Design
- Enhanced EER model with subtypes and associations
- Relationships between residents, rooms, staff, applications, and repairs

### SQL Implementation
- 3NF normalized schema
- Indexing on searchable attributes (e.g., name, phone)
- Stored procedures for reusable logic
- Custom constraint to enforce date logic (e.g., end date > start date)

### Query Capability
Sample SQL queries included to answer real-world business questions:
- Residents in respite care
- Rooms with multiple applications
- Staff with highest salaries
- Repairs in last 3 months
- Residents in care for 3+ years

---

##Tech Stack

- MySQL Server 8+
- MySQL Workbench
- SQL (DDL, DML, constraints, procedures)

---
##Queries

1. Who are the residents in respite care? List the residents in respite care that include their 
name, date of birth, emergency contact, the contract start date, contract end date 
details.  
2. How many rooms have been managed by each care manager? Show the manager’s 
name, the number of rooms managed by them. Order the list so that the manager who 
has managed the most properties appear first. 
3. List the details of repair jobs performed by handymen for the facility in the last 3 
months. The details should include the job ID, job description, the completed date, 
charge, roomID and the handyman’s name. 
4. Which rooms have received more than one application in the last 12 months? Show the 
room ID, room type, daily rental and the number of applications. 
5. Find the details of the staff who has the highest annual salary. The details should their 
id, name, address, include the type of staff – nurse, personal carer or care manager.  
6. Show the details of residents who have lived in the care for more than 3 years grouped 
by the type of care they receive. This detail is important as the government want to 
calculate the number of elderly people who may be paying the means tested fee which 
ceases after staying 3 years or more in care. So, the details in the output should include 
the resident’s name, contact phone, the roomType, type of care a resident is currently 
receiving and the cost of the room. 


## Notes

- All `.sql` files are modular and well-structured
- Diagram and model files support quick schema visualization
- Ready to be extended for use in full-stack applications

---
## Author
Shrey Soni 
