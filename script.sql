-- SQLite
-- SQLite
drop table Author;
drop table Publication;
drop table Book;

-- Tables for bookstore
--Book(Id(candidate key(tesile yo primary key),Title,Author,PublishedDate,Price,Edition,ISBN(Candidate key),Genre,PublicationId(Fk),AuthorId(Fk))
--Publication(Id,Name,Address,ESTD)
--Author(Id,Name,Address,Phone,Gender,Education)

--one-to-one, one-to-many,many-to-many

create table Author
(
Id Integer PRIMARY KEY AUTOINCREMENT,
Name text,
Address text,
Phone text,
Gender text,
Education text
);

select * from Author;
INSERT into Author VALUES (NULL,'Sangam chaudhary','ktm','9876543210','male','masters in computer');
INSERT into Author VALUES (NULL,'Sandesh chaudhary','ktm','9876543200','male','masters in computer');

create table Publication
(
Id Integer PRIMARY KEY AUTOINCREMENT,
Name text,
Address text,
ESTD text
);

INSERT into Publication VALUES(null,'sangam publication','belauri','2058');
INSERT into Publication VALUES(null,'koselee publication','dhangadhi','2071');
select * from Publication;

create table Book
(
Id Integer PRIMARY KEY AUTOINCREMENT,
Title text,
PublishedDate text,
Price text,
Edition text,
ISBN text,
Genre text,
PublicationId Integer,
AuthorId Integer,
FOREIGN key(AuthorID) REFERENCES Author(Id),
FOREIGN key(PublicationID) REFERENCES Publication(Id)
);

INSERT into book VALUES(null,'computer engineering','2080/01/07','2000','2nd','123','guide book',2,1);
INSERT into book VALUES(null,'mechanical engineering','2080/04/07','2000','1st','277','Numerical',1,1);
INSERT into book VALUES(null,'civi engineering','2080/01/07','2000','2nd','123','guide book',2,1);



SELECT * from Book;