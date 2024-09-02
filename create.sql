-- SQLite
DROP table books 
DROP table authorr
drop table publicationn
create table Authorr
(
Id Integer PRIMARY KEY AUTOINCREMENT,
Name text,
Address text,
Phone text,
Gender text,
Education text
);


create table Publicationn
(
Id Integer PRIMARY KEY AUTOINCREMENT,
Name text,
Address text,
ESTD text
);

create table Books
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
FOREIGN key(PublicationID) REFERENCES Publicationn(PublicationId),
FOREIGN key(AuthorID) REFERENCES Authorr(AuthorId)
);