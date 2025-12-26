CREATE table Movies (
    movie_id INT primary key,
    title VARCHAR(100) NOT NULL,
    director VARCHAR(100) Not Null,
    release_year INT
    );

Insert Into Movies (movie_id, title, director, release_year) Values
(1, "Гарри Поттер и Философский камень", 'Крис Коламбус', 2001),
(2, 'Дети капитана Гранта', 'Владимир Вайншток', 1936),
(3, 'Пираты Карибского моря: Проклятие Чёрной Жемчужины', 'Гор Вербински', 2003),
(4, 'Сто лет тому вперёд', 'Александр Андрющенко', 2024);


Select * From Movies;


UPDATE Movies
SET title = 'Пираты Карибского моря: Сундук мертвеца', release_year = 2006
WHERE movie_id = 3;


Delete From Movies
WHERE movie_id = 4;