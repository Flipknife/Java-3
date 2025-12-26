

CREATE TABLE Books1 (
    book_id INT PRIMARY KEY,                -- Номер книги
    title VARCHAR(100) NOT NULL,            -- Название книги (Not NUll - чтобы строка не была пустой)
    author VARCHAR(100) NOT NULL,           -- Автор книги (Not NUll - чтобы строка не была пустой)
    year INT,                               -- Год издания
    genre VARCHAR(50)                       -- Жанр книги
);


SELECT * FROM Books1;
SELECT title, author FROM Books1
WHERE year > 1870;

INSERT INTO Books1 (book_id, title, author, year)
VALUES (4, "Мастер и Маргарита", "Михаил Булгаков", 1967);

-- Пример кода UPDATE
UPDATE Books1
SET year = 1873, author = "Лев Толстой"
WHERE book_id = 1;

-- Пример кода DELETE
DELETE FROM Books1
WHERE book_id = 2;

-- Пример кода ORDER BY
SELECT * FROM Books1
ORDER BY year DESC




-- Пример кода JOIN
CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100)
);

INSERT INTO Publishers (publisher_id, publisher_name)
VALUES (1, "Издательство А"),
       (2, "Издательство Б");

--Добавление столбца для связи в таблицу Books
ALTER TABLE Books1 ADD COLUMN publisher_id INT;

--Обновление записей для уствновления связи
UPDATE Books1 SET publisher_id = 1 WHERE book_id IN (1, 3);
UPDATE Books1 SET publisher_id = 2 WHERE book_id = 4;

--Объединение таблиц с использованием INNER JOIN
SELECT b.title, b.author, p.publisher_name
FROM Books1 b
INNER JOIN Publishers p ON b.publisher_id = p.publisher_id;



-- Подсчёт количества книг по авторам
SELECT author, COUNT(*) AS book_count
FROM Books1
GROUP BY author;


-- Определение минимального и максимального года издания
SELECT MIN(year) AS earliest_year, MAX(year) AS latest_year
FROM Books1


--Группировка с фильтрацией с помощью HAVING
SELECT author,COUNT(*) AS book_count
FROM Books1
GROUP BY author
HAVING COUNT(*) > 1;