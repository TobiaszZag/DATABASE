create database if not EXISTS KK_TZ_biblioteka DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;

use KK_TZ_biblioteka;

create table Autor( 
Id_Autora int, 
Imie varchar(32),
Nazwisko varchar(32),
Data_ur  date,
Pochodzenie varchar(32)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;

ALTER TABLE Autor
ADD PRIMARY KEY (Id_Autora);

create table Ksiazki (
Id_Ksiazki int,
Id_Wypozyczenia int,
Id_Autora int,
Tytul varchar(50),
Rok_wyd  int(4)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;

ALTER TABLE Ksiazki
ADD PRIMARY KEY (Id_Ksiazki);

create table Wypozyczenia (
Id_Wypozyczenia int,
Id_Ksiazki int,
Id_klienci_stali int,
Id_klienci_publiczni int,
Data_wypozyczenia date,
Data_oddania date
)DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;

ALTER TABLE Wypozyczenia
ADD PRIMARY KEY (Id_Wypozyczenia);

create table Klienci_stali (
Id_klienci_stali int,
Id_Wypozyczenia int,
Imie varchar(32),
Nazwisko varchar(32),
Telefon int(12)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;

ALTER TABLE Klienci_stali
ADD PRIMARY KEY (Id_klienci_stali);

create table Klienci_publiczni (
Id_klienci_publiczni int,
Id_Wypozyczenia int,
Imie varchar(32),
Nazwisko varchar(32),
Telefon int(12)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;

ALTER TABLE Klienci_publiczni
ADD PRIMARY KEY (Id_klienci_publiczni);

													/*Wprowadzanie Danych*/
	/*Autor*/
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (1, 'Adam', 'Mickiewicz', '1798-12-24', 'Polska');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (2, 'Juliusz', 'Słowacki', '1809-09-04 ', 'Ukraina');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (3, 'Bolesław', 'Prus', '1847-08-20 ', 'Polska');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (4, 'Antoine', 'de Saint-Exupery', '1900-07-31', 'Francja');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (5, 'Joanne', 'Murray', '1965-07-31', 'Wielka Brytania');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (6, 'Adam', 'Mickiewicz', '1798-12-24', 'Polska');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (7, 'Henryk', 'Sienkiewicz', '1846-05-05', 'Polska');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (8, 'Henryk', 'Sienkiewicz', '1846-05-05', 'Polska');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (9, 'Władysław', 'Reymont', '1867-05-07', 'Polska');
INSERT INTO Autor (Id_Autora, Imie, Nazwisko, Data_ur, Pochodzenie) VALUES (10, 'Stefan', 'Żeromski', '1864-10-14', 'Polska');

	/*Książki*/
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (1, 1, 1, 'Pan Tadeusz', '1834');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (2, 2, 2, 'Balladyna', '1839');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (3, 3, 3, 'Lalka', '1890');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (4, 4, 4, 'Mały Ksiażę', '1943');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (5, 5, 5, 'Harry Potter i Kamień Filozoficzny', '1997');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (6, 6, 6, 'Dziady część 3', '1832');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (7, 7, 7, 'Quo Vadis', '1896');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (8, 8, 8, 'W pustyni i w puszczy', '1911');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (9, 9, 9, 'Chłopi tom 1', '1904');
INSERT into Ksiazki (Id_Ksiazki, Id_Wypozyczenia, Id_Autora, Tytul, Rok_wyd) values (10, 10, 10, 'Syzyfowe prace', '1897');
		
	/*Wypożyczenia*/
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (1, 1, null, 6, '2008-08-12', '2008-08-26');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (2, 2, 3, null, '2008-08-17', '2008-08-30');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (3, 3, 5, null, '2009-04-23','2009-05-06');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (4, 4, null, 10, '2010-02-27', null);
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (5, 5, 2, null, '2011-04-13', '2011-05-12');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (6, 6, null, 8, '20011-07-04', '20011-07-20');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (7, 7, null, 9, '2012-05-08', '2012-05-22');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (8, 8, 4, null, '2018-08-15', '2018-08-28');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (9, 9, null, 7, '2020-08-15', '2020-10-15');
INSERT into Wypozyczenia(Id_Wypozyczenia, Id_Ksiazki, Id_klienci_stali, Id_klienci_publiczni, Data_wypozyczenia, Data_oddania) values (10, 10, 1, null,'2020-12-01', '2020-12-30');

	
	/*Klienci Stali*/
INSERT INTO Klienci_stali (Id_klienci_stali, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (1, 1, 'Grzegorz', 'Wsiak', +48587432127);
INSERT INTO Klienci_stali (Id_klienci_stali, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (2, 2, 'Tobiasz', 'Podgórski', +48742807883);
INSERT INTO Klienci_stali (Id_klienci_stali, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (3, 3, 'Bogusława', 'Kiet', +48866427895);
INSERT INTO Klienci_stali (Id_klienci_stali, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (4, 4, 'Juliusz', 'Owlik', +48513825522);
INSERT INTO Klienci_stali (Id_klienci_stali, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (5, 5, 'Henryk', 'Robak', +48999666878);
			
	/*Klienci Publiczni*/												
INSERT into  Klienci_publiczni (Id_klienci_publiczni, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (6, 6, 'Tomasz', 'Górny', +48572246571);
INSERT into  Klienci_publiczni (Id_klienci_publiczni, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (7, 7, 'Kasia', 'Miła', +48578125557);
INSERT into  Klienci_publiczni (Id_klienci_publiczni, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (8, 8, 'Aneta', 'Picheta', +48531224651);
INSERT into  Klienci_publiczni (Id_klienci_publiczni, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (9, 9, 'Jacob', 'Dolny', +48778554657);
INSERT into  Klienci_publiczni (Id_klienci_publiczni, Id_Wypozyczenia, Imie, Nazwisko, Telefon) values (10, 10, 'Miłosz', 'Wielki', +48712346571);													
													

														/*Klucze obce*/

ALTER TABLE Ksiazki
ADD FOREIGN KEY (Id_Autora)
REFERENCES Autor(Id_Autora);

ALTER TABLE Ksiazki
ADD FOREIGN KEY (Id_Wypozyczenia)
REFERENCES Wypozyczenia(Id_Wypozyczenia);

ALTER TABLE Wypozyczenia
ADD FOREIGN KEY (Id_Ksiazki)
REFERENCES Ksiazki(Id_Ksiazki);

ALTER TABLE Wypozyczenia
ADD FOREIGN KEY (Id_klienci_stali)
REFERENCES Klienci_stali(Id_klienci_stali);

ALTER TABLE Wypozyczenia
ADD FOREIGN KEY (Id_klienci_publiczni)
REFERENCES Klienci_publiczni(Id_klienci_publiczni);

ALTER TABLE Klienci_stali
ADD FOREIGN KEY (Id_Wypozyczenia)
REFERENCES Wypozyczenia(Id_Wypozyczenia);

ALTER TABLE Klienci_publiczni
ADD FOREIGN KEY (Id_Wypozyczenia)
REFERENCES Wypozyczenia(Id_Wypozyczenia);

														/*Przedstawienie danych*/

desc Autor;

desc Ksiazki;

desc Wypozyczenia;

desc Klienci_stali;

desc Klienci_publiczni;

select * from Autor;

select * from Ksiazki;

SELECT * from Wypozyczenia;

SELECT * from Klienci_stali;

SELECT * from Klienci_publiczni;
