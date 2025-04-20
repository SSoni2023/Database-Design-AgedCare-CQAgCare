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

## 📎 Notes

- All `.sql` files are modular and well-structured
- Diagram and model files support quick schema visualization
- Ready to be extended for use in full-stack applications

---
## Author
Shrey Soni 
