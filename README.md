#  Library Management System – Database Schema Design

This project involves designing and implementing a relational database schema for a Library Management System using MySQL. It includes entities for books, authors, categories, members, librarians, and book issue tracking.


## Database Schema Overview

###  Tables:
- **Author**: Stores details about book authors
- **Category**: Defines book categories/genres
- **Book**: Each book belongs to a category and is written by an author
- **Member**: Library members who can borrow books
- **Librarian**: Staff managing book issues and returns
- **IssuedBook**: Tracks which member has borrowed which book, by which librarian


##  Files Included

| File Name           | Description                                    |
|---------------------|------------------------------------------------|
| `khalil_library.sql`| SQL script to create database and all tables  |
| `er_diagram.png`    | Entity-Relationship (ER) diagram of the schema |
| `README.md`         | Project overview and usage instructions        |

---

##  How to Use

1. Open **MySQL Workbench**
2. Connect to your MySQL server
3. Run the SQL script `khalil_library.sql` to create the schema and tables
4. Use `er_diagram.png` to understand the schema structure visually

##  Concepts Applied

- SQL DDL: `CREATE TABLE`, `PRIMARY KEY`, `FOREIGN KEY`
- Normalization (up to 3NF)
- One-to-Many relationships
- Use of `AUTO_INCREMENT`
- ER Diagram Design

##  Author

**Khalil Abdul Jabbar Shaikh**  
SQL Developer Intern  
August 2025

