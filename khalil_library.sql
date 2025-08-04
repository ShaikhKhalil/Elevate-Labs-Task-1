	CREATE DATABASE khalil_library;
	USE khalil_library;

	CREATE TABLE Author (
		author_id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(100) NOT NULL
	);

	CREATE TABLE Category (
		category_id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(100) NOT NULL
	);

	CREATE TABLE Book (
		book_id INT AUTO_INCREMENT PRIMARY KEY,
		title VARCHAR(200) NOT NULL,
		genre VARCHAR(50),
		published_year YEAR,
		author_id INT,
		category_id INT,
		FOREIGN KEY (author_id) REFERENCES Author(author_id),
		FOREIGN KEY (category_id) REFERENCES Category(category_id)
	);

	CREATE TABLE Member (
		member_id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(100),
		email VARCHAR(100) UNIQUE,
		phone VARCHAR(15)
	);

	CREATE TABLE Librarian (
		librarian_id INT AUTO_INCREMENT PRIMARY KEY,
		name VARCHAR(100),
		email VARCHAR(100) UNIQUE,
		phone VARCHAR(15)
	);

	CREATE TABLE IssuedBook (
		issue_id INT AUTO_INCREMENT PRIMARY KEY,
		book_id INT,
		member_id INT,
		librarian_id INT,
		issue_date DATE,
		return_date DATE,
		FOREIGN KEY (book_id) REFERENCES Book(book_id),
		FOREIGN KEY (member_id) REFERENCES Member(member_id),
		FOREIGN KEY (librarian_id) REFERENCES Librarian(librarian_id)
	);
