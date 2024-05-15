---Спочатку додаю необхідні дані до бази

INSERT INTO books(title, author_id, publication_year, genre, books_count, available) VALUES 
	('Book7', 5, 1987, 'казка', 1, true),
	('Book8 ', 2, 2006, 'детектив', 2, true),
	('Book9', 2, 2007, 'роман', 1, false),
	('Book10', 3, 1991, 'детектив', 2, true),
	('Book11', 4, 1991, 'роман', 5, true),
	('Book12', 1, 1989, 'роман', 4, true);

INSERT INTO workers(workers_name, workers_position, salary, library_filia) VALUES 
	('worker6', 'Бібліотекар', 6500, '1'),
	('worker7', 'Адміністратор', 9000, '1'),
	('worker8', 'Бібліотекар', 6500, '1'),
	('worker9', 'Адміністратор', 9000, '2'),
	('worker10', 'Бібліотекар', 5000, '2');


INSERT INTO book_loans(book_id, users_id, worker_id, loan_date, return_date) VALUES 
	(1, 1, 1, '2024-05-12', '2024-06-12'),
	(3, 2, 1, '2024-05-14', '2024-06-14'),
	(5, 3, 2, '2024-05-16', '2024-06-16'),
	(1, 9, 1, '2024-05-17', '2024-06-17'),
	(7, 2, 1, '2024-05-17', '2024-06-17'),
	(5, 5, 2, '2024-05-15', '2024-06-15'),
	(1, 1, 1, '2024-05-01', '2024-06-01'),
	(8, 2, 1, '2024-05-03', '2024-06-03'),
	(4, 3, 2, '2024-05-11', '2024-06-11');

--- Необхідні запити

--Створіть SQL-запит, який показує користувачів, які позичили більше 5 книг. Використайте HAVING

SELECT users_id, COUNT(*) 
FROM book_loans
GROUP BY users_id
HAVING COUNT(*) > 5;

--Створіть SQL-запит, який виводить жанри, для яких у бібліотеці є більше 10 книг. Використайте HAVING.

SELECT genre, COUNT(*) 
FROM books
GROUP BY genre
HAVING COUNT(*) > 10;

--Створіть SQL-запит, який показує бібліотечні філії, де працює більше 5 працівників. Використайте HAVING.

SELECT library_filia, COUNT(*) 
FROM workers
GROUP BY library_filia
HAVING COUNT(*) > 5;
