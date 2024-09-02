-- insert query
-- insert for publication
insert into Publicationn
VALUES
(
    null,
    ' Sangam Publishers',
    'Bhaktapur',
    '2007/01/06'
),
(
    null,
    'Alpha Publications',
    'Kathmandu',
    '2005/07/07'
),
(
    null,
    'Samjhana Publications',
    'Kathmandu',
    '2003/10/10'
),
(
    null,
    'Samiksha Publications',
    'Kathmandu',
    '2008/01/15'
);

-- insert for author
insert into Authorr
VALUES
(
    null, 
    'Yaswant Kenetkar', 
    'Ktm', 
    '98455747463', 
    'M', 
    'Masters in Computer Science'
),
(
    null,
    'Parijat',
    'Kathmandu',
    '9851234543',
    'F',
    'Masters in Philoshopy'
),
(
    null,
    'Suman Pokharel',
    'Kathmandu',
    '9851234231',
    'M',
    'Masters in Arts'
),
(
    null,
    'Laxmi Prasad Devkota',
    'Kathmandu',
    '9841234500',
    'M',
    'PHD. Literature'
),
(
    null,
    'Banira Giri',
    'Kaski',
    '9851634200',
    'F',
    'Masters in Education'
),
(
    null,
    'Ramesh Basnet',
    'Kathmandu',
    '9841234400',
    'M',
    'Masters in computer science'
);


--insert for books 
INSERT INTO Books
VALUES
(
    null,
    'मुनामदन',
    '1960/02/23',
    '650.50',
    'I',
    'XZQ5687HGDTE34',
    'Drama',    
    1,
    4
),
(
    null,
    'Design and Analysis of algorithms',
    '2020/02/23',
    '850.50',
    'III',
    'ABC5687HGDTE34',
    'CS',    
    1,
    1
),
(
    null,
    'जीवनको छेउबाट',    
    '1960/02/23',
    '450.50',
    'IV',
    'EKT5687HGDTE34',
    'Drama',
    3,
    3
),
(
    null,
    'शिरीषको फूल',
    '1900/02/23',
    '1050.25',
    '3rd',
    'RGZ5687HGDTE34',
    'Drama',
    4,
    2
),
(
    null,
    'कारागार',
    '2000/02/23',
    '430.25',
    'Second',
    'IOZ5687HGDTE34',
    'Fantasy',
    2,
    5
),
(
    null,
    'जीवनको छेउबाट',
    '1970/02/23',
    '1050.25',
    'First',
    'RGZ5687HGDTE34',
    'Mystery',
    3,
    3
),
(
    null,
    'pani ko gham',
    '2022/02/22',
    '639',
    'I',
    'DEF5687TUYE34',
    'Biography',    
    3,
    1
),
(
    null,
    'Soch',
    '2023/09/24',
    '440',
    'I',
    'XYZ5687HGDTE34',
    'Drama',    
    4,
    3
),
(
    null,
    'Seto Dharti',
    '2012/01/06',
    '499',
    'II',
    'VSD5687KLM98',
    'Novel',    
    4,
    5
),
(
    null,
    'Silence of Night',
    '2008/08/13',
    '999',
    'IV',
    'GULC5687HGD34',
    'Horror',    
    2,
    6
),
(
    null,
    'Harry potter',
    '1970/06/13',
    '699',
    'I',
    'HARR7896HGD34',
    'Fantasy',    
    3,
    6
),
(
    null,
    'Mahabharat ',
    '1950/009/09',
    '1999',
    'IV',
    'MAHA5687BHRT34',
    'Mythological',    
    1,
    1
),
(
    null,
    'Adhipurush',
    '1991/03/11',
    '1499',
    'V',
    'RAMA5687YAN34',
    'Mythological',    
    4,
    6
),
(
    null,
    'Kalki 2838',
    '2024/04/03',
    '2499',
    'IV',
    'GULC5687HGD34',
    'Science and  fictional',    
    2,
    5
),
(
    null,
    'Thangalaan',
    '1970/10/10',
    '2999',
    'I',
    'VIKR2009HGD34',
    'Thriller and Mystery',    
    2,
    3
),
(
    null,
    'Forensics',
    '2015/11/11',
    '999',
    'II',
    'FOR3258SCI34',
    'Science',    
    3,
    3
),
(
    null,
    'Sherlock Homes',
    '1981/06/24',
    '1111',
    'I',
    'SHER3210LOV94',
    'Crime thriller',    
    2,
    1
),
(
    null,
    'Heridetary',
    '1973/02/22',
    '999',
    'IV',
    'HER0902BSD32',
    'Horror',    
    2,
    6
),
(
    null,
    'Welcome to jungle',
    '2001/09/19',
    '599',
    'IV',
    'WEL3657CM34',
    'Comedy',    
    4,
    1
),
(
    null,
    'Tarak meheta ka oolta chasma',
    '1965/12/12',
    '199',
    'I',
    'TMKOC143HG34',
    'Comedy',    
    3,
    3
);

select * from Publicationn;
select * from Authorr;
SELECT * from Books;

SELECT b.Title, b.Price, a.Name Authorr, p.Name Publisher, b.PublishedDate from Books b
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
