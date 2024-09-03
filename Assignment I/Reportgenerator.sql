-- SQLite
--all Books with it's Title, Price, Author Name, Publisher Name and Published Date
SELECT b.Title, b.Price, a.Name as Authorr, p.Name as Publisher, b.PublishedDate from Books b
 JOIN Authorr a on a.ID = b.AuthorId
 JOIN Publicationn p on p.ID = b.PublicationId;


 -- all books which are published in last 30 years

SELECT *
FROM Books
WHERE PublishedDate >= 2024- '30 years';


--get total price of books written by parijat
SELECT SUM(Price )AS TotalPrice
FROM Books
JOIN Authorr ON Books.AuthorId = Authorr.Id
WHERE Authorr.Name = 'Parijat';


--4. publishers in descending order with number of books published
SELECT p.Name AS Publisher, COUNT(b.Id) AS NumBooks
FROM Publicationn p
LEFT JOIN Books b ON p.Id = b.PublicationId
GROUP BY p.Name
ORDER BY NumBooks DESC;

--all authors with comma separated list of books they have written

SELECT 
    a.Name AS AuthorName,
    GROUP_CONCAT(b.Title, ', ') AS Books
FROM 
    Authorr a
LEFT JOIN 
    Books b ON a.Id = b.AuthorId
GROUP BY 
    a.Id, a.Name;
