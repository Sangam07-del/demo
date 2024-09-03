-- SQLite

SELECT b.Title, b.Price, a.Name as Authorr, p.Name as Publisher, b.PublishedDate from Books b
 JOIN Authorr a on a.ID = b.AuthorId
 JOIN Publicationn p on p.ID = b.PublicationId;


 -- 30 years 

SELECT *
FROM Books
WHERE PublishedDate >= 2024- '30 years';


--get total price of books written by parijat

SELECT a.name AS author_name, SUM(b.price) AS total_price
FROM Authorr a
JOIN Publicationn p ON a.id = p.id
JOIN Books b ON p.id = b.id
WHERE a.Name= ''
GROUP BY a.name;

SELECT Authorr, GROUP_CONCAT(Title ORDER BY title ASC SEPARATOR ', ') AS books
FROM books
GROUP BY Authorr;


--4. publishers in descending order with number of books published
SELECT p.Name AS Publisher, COUNT(b.Id) AS NumBooks
FROM Publicationn p
LEFT JOIN Books b ON p.Id = b.PublicationId
GROUP BY p.Name
ORDER BY NumBooks DESC;


SELECT a.Name AS Author,
       GROUP_CONCAT(b.Title ORDER BY b.Title ASC SEPARATOR ', ') AS Books
FROM Authorr a
LEFT JOIN Books b ON a.Id = b.AuthorId
GROUP BY a.Name;
