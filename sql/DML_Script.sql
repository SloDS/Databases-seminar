/*VNOS PODATKOV*/
/*Inserting to COUNTRIES*/

INSERT INTO Countries (name, acronym, description)
VALUES ('Germany', 'GER', 'The country of Germany.');

INSERT INTO Countries (name, acronym, description)
VALUES ('Japan', 'JAP', 'The country of Japan.');

INSERT INTO Countries (name, acronym, description)
VALUES ('Slovenia', 'SLO', 'The country of Slovenia.');

INSERT INTO Countries (name, acronym, description)
VALUES ('Italy', 'ITA', 'The country of Italy');

INSERT INTO Countries (name, acronym, description)
VALUES ('America', 'USA', 'The United States of America.');

INSERT INTO Countries (name, acronym, description)
VALUES ('Canada', 'CAN', 'CANADA!!!');

/*Inserting to POSTCODES*/

INSERT INTO PostCodes (idCountry, code, city)
VALUES ((SELECT idCountry FROM Countries WHERE acronym = 'JAP'), '0001', 'Tokyo');

INSERT INTO PostCodes (idCountry, code, city)
VALUES ((SELECT idCountry FROM Countries WHERE acronym = 'GER'), '10115', 'Berlin');

INSERT INTO PostCodes (idCountry, code, city)
VALUES ((SELECT idCountry FROM Countries WHERE acronym = 'SLO'), '3320', 'Velenje');

INSERT INTO PostCodes (idCountry, code, city)
VALUES ((SELECT idCountry FROM Countries WHERE acronym = 'SLO'), '1000', 'Ljubljana');

INSERT INTO PostCodes (idCountry, code, city)
VALUES ((SELECT idCountry FROM Countries WHERE acronym = 'GER'), '70173', 'Stuttgart');

INSERT INTO PostCodes (idCountry, code, city)
VALUES ((SELECT idCountry FROM Countries WHERE acronym = 'USA'), '94112', 'San Francisco');

/*Inserting to PEOPLE*/

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Domen', 'Stropnik', (SELECT idPostCode FROM PostCodes WHERE code = '3320'),
	'male', '064-233-020', 'stropnik.domen@outlook.com');

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Hideo', 'Kojima', (SELECT idPostCode FROM PostCodes WHERE code = '0001'),
	'male', '231-481-991', 'hideo.freakingkojima@yahoo.com');

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Kevin', 'Brown', (SELECT idPostCode FROM PostCodes WHERE code = '70173'),
	'male', '032-555-771', 'kevin.brown@gmail.com');

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Ajta', 'Pavliè', (SELECT idPostCode FROM PostCodes WHERE code = '3320'),
	'female', '051-450-912', 'ajta.pavlic@gmail.com');

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Ana', 'Javornik', (SELECT idPostCode FROM PostCodes WHERE code = '1000'),
	'female', '061-230-910', 'ana.banana@gmail.com');

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Stanley', 'Kubrick', NULL, 'male', NULL, NULL);

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('James', 'Cameron', NULL, 'male', NULL, NULL);

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Brad', 'Pitt', (SELECT idPostCode FROM PostCodes WHERE code = '94112'),
	'male', NULL, NULL);

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Shelly', 'Duval', (SELECT idPostCode FROM PostCodes WHERE code = '94112'),
	'female', NULL, 'Shelly123@yahoo.com');

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Steven', 'Spielberg', NULL, 'male', NULL, 'Steven.Gielberg@outlook.com');

INSERT INTO People (name, surname, idpostcode, gender, telephone, email)
VALUES ('Troy', 'Baker', NULL, 'male', '315-555-999', NULL);

/*Inserting to FRANCHISES*/

INSERT INTO Franchises (franchise, description)
VALUES ('Friday the 13th', 'A horror franchise about a slasher killer named Jason.');

INSERT INTO Franchises (franchise, description)
VALUES ('The Avengers', 'A superhero movie featuring Marvels most famous heroes.');

INSERT INTO Franchises (franchise, description)
VALUES ('Batman', 'A superhero movie featuring the famous hero Batman.');

INSERT INTO Franchises (franchise, description)
VALUES ('Halloween', 'A horror franchise about a slasher killer named Michael Myers.');

INSERT INTO Franchises (franchise, description)
VALUES ('Terminator', 'An action sci-fi series about super killer robots!');

INSERT INTO Franchises (franchise, description)
VALUES ('Dragon Ball', 'An action anime series, that is crazy!');

/*Inserting to FILMS*/

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES ((SELECT idFranchise FROM Franchises WHERE franchise = 'Terminator'),
	'Terminator 2: Judgement Day', 'Jul-01-1991', (SELECT idCountry FROM Countries
    WHERE acronym = 'USA'), 'English', 94000000.0, 'The Sequel to James Cameron
    Sci-Fi epic The Terminator.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES ((SELECT idFranchise FROM Franchises WHERE franchise = 'Dragon Ball'),
	'Dragon Ball Z: Battle of Gods', 'Mar-30-2013', (SELECT idCountry FROM Countries
    WHERE acronym = 'JAP'), 'Japanese', 20000000.0, 'The 2013 movie of the Dragon Ball franchise.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES (NULL, 'The Sixth Sense', 'Aug-06-1999', (SELECT idCountry FROM Countries
    WHERE acronym = 'USA'), 'English', 40000000.0, 'The cultural hit the Sixth Sense.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES (NULL, 'The Dark Knight', 'Jul-14-2008', (SELECT idCountry FROM Countries
    WHERE acronym = 'USA'), 'English', 1005000000.0, 'The sequel to Batman Begins.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES (NULL, 'Isle of Dogs', 'Feb-15-2018', (SELECT idCountry FROM Countries
    WHERE acronym = 'GER'), 'English', 64200000.0, 'The german movie about doggos.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES ((SELECT idFranchise FROM Franchises WHERE franchise = 'The Avengers'),
	'Avengers: Infinity War', 'Apr-27-2018', (SELECT idCountry FROM Countries
    WHERE acronym = 'USA'), 'English', 400000000.0, 'The 3rd movie in the Avengers Franchise.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES (NULL, 'The Shinning', 'May-23-1980', (SELECT idCountry FROM Countries
    WHERE acronym = 'USA'), 'English', 19000000.0, 'The cult classic horror movie based on the book.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES ((SELECT idFranchise FROM Franchises WHERE franchise = 'Halloween'),
	'Halloween (2018)', 'Oct-19-2018', (SELECT idCountry FROM Countries
    WHERE acronym = 'USA'), 'English', 15000000.0, 'The latest slasher in the Halloween series.');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES (NULL, 'Pulp Fiction', 'Oct-14-1994', (SELECT idCountry FROM Countries
    WHERE acronym = 'USA'), 'English', 8000000.0, 'The classic masterpice that is Pulp Fiction');

INSERT INTO Films (idFranchise, name, releaseDate, idCountry, language,
	budget, description)
VALUES (NULL, 'Funny Games', 'May-14-1997', (SELECT idCountry FROM Countries
    WHERE acronym = 'GER'), 'German', 1000000.99, 'The German horror flick.');

/* Inserint into ROLES*/

INSERT INTO Roles (roletype, description)
VALUES ('Director', 'The director is basically the leader of the movie project and overseas it.');

INSERT INTO Roles (roletype, description)
VALUES ('Story writer', 'A writer that helped write out the store of the film.');

INSERT INTO Roles (roletype, description)
VALUES ('Actor', 'An actor is a person that acts as a character within a film.');

/*Inserting into CastAndProduction*/

INSERT INTO CastAndProduction (idfilm, idperson, idrole)
VALUES ((SELECT idFilm FROM Films WHERE name = 'The Shinning'),
	(SELECT idPerson FROM People WHERE name = 'Stanley' AND surname = 'Kubrick'),
	(SELECT idRole FROM Roles WHERE roletype = 'Director'));

INSERT INTO CastAndProduction (idfilm, idperson, idrole)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Isle of Dogs'),
	(SELECT idPerson FROM People WHERE name = 'Ana' AND surname = 'Javornik'),
	(SELECT idRole FROM Roles WHERE roletype = 'Actor'));

INSERT INTO CastAndProduction (idfilm, idperson, idrole)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Terminator 2: Judgement Day'),
	(SELECT idPerson FROM People WHERE name = 'James' AND surname = 'Cameron'),
	(SELECT idRole FROM Roles WHERE roletype = 'Director'));

/*Inserting into CATEGORIES*/

INSERT INTO Category (name, description)
VALUES ('Horror', 'A genre that is all about scaring.');

INSERT INTO Category (name, description)
VALUES ('Thriller', 'A genre all about suspense.');

INSERT INTO Category (name, description)
VALUES ('Comedy', 'A genre full of laughs.');

INSERT INTO Category (name, description)
VALUES ('Super Hero', 'A genre all about super heroes.');

INSERT INTO Category (name, description)
VALUES ('Sci-Fi', 'A genre all about advance technology.');

INSERT INTO Category (name, description)
VALUES ('Romance', 'A genre all about love.');

INSERT INTO Category (name, description)
VALUES ('Action', 'A genre all about action.');

/*Inserting into FILMSCATEGORY*/

INSERT INTO FilmsCategory (idcategory, idfilm, description)
VALUES ((SELECT idCategory FROM Category WHERE name = 'Horror'),
	(SELECT idFilm FROM Films WHERE name = 'The Shinning'),
    'The Shining is a movie well known within the horror genre');

INSERT INTO FilmsCategory (idcategory, idfilm, description)
VALUES ((SELECT idCategory FROM Category WHERE name = 'Action'),
	(SELECT idFilm FROM Films WHERE name = 'The Dark Knight'),
    'The Dark Knight is an action movie with lots of action.');

INSERT INTO FilmsCategory (idcategory, idfilm, description)
VALUES ((SELECT idCategory FROM Category WHERE name = 'Super Hero'),
	(SELECT idFilm FROM Films WHERE name = 'The Dark Knight'),
    'The Dark Knight is part of the Super Hero genre, since it features Batman.');

INSERT INTO FilmsCategory (idcategory, idfilm, description)
VALUES ((SELECT idCategory FROM Category WHERE name = 'Comedy'),
	(SELECT idFilm FROM Films WHERE name = 'Pulp Fiction'),
    'Many do not consider this a comedy, but it is a very funny movie.');

INSERT INTO FilmsCategory (idcategory, idfilm, description)
VALUES ((SELECT idCategory FROM Category WHERE name = 'Horror'),
	(SELECT idFilm FROM Films WHERE name = 'Halloween (2018)'),
    'Halloween is horror series duh.');

INSERT INTO FilmsCategory (idcategory, idfilm, description)
VALUES ((SELECT idCategory FROM Category WHERE name = 'Thriller'),
	(SELECT idFilm FROM Films WHERE name = 'Pulp Fiction'),
    'The suspense is real.');

/*Inserting into REVIEWS*/

INSERT INTO Reviews (score, description, idPerson)
VALUES (10, 'A masterpice of horror! The Shinning is a must watch movie for all!',
(SELECT idPerson FROM People WHERE name = 'Domen' AND surname = 'Stropnik'));

INSERT INTO Reviews (score, description, idPerson)
VALUES (7, 'It is decent! The Jumpscares were pretty cheap',
(SELECT idPerson FROM People WHERE name = 'Ana' AND surname = 'Javornik'));

INSERT INTO Reviews (score, description, idPerson)
VALUES (10, 'This is one of THE BEST sequels ever to be made period!',
(SELECT idPerson FROM People WHERE name = 'Ana' AND surname = 'Javornik'));

INSERT INTO Reviews (score, description, idPerson)
VALUES (3, 'Not enough black ppl.',
(SELECT idPerson FROM People WHERE name = 'Kevin' AND surname = 'Brown'));

INSERT INTO Reviews (score, description, idPerson)
VALUES (10, 'Avenger UNITE!!!',
(SELECT idPerson FROM People WHERE name = 'Domen' AND surname = 'Stropnik'));

/*Inserting into BUSINESSPARTNERS*/

INSERT INTO BusinessPartners (type, description)
VALUES ('IGN', 'IGN is a well known media company that reviews games, anime and movies!');

INSERT INTO BusinessPartners (type, description)
VALUES ('The eXile', 'A website that reviews varius topics.');

INSERT INTO BusinessPartners (type, description)
VALUES ('Film.com', 'A well known site that criticizes films and gives out a review score.');

INSERT INTO BusinessPartners (type, description)
VALUES ('Buzzfeed', 'It sucks xd.');

/*Inserting into FILMREVIEWS*/

INSERT INTO FilmReviews (idFilm, idBusinessPartner, idReview)
VALUES ((SELECT idFilm FROM Films WHERE name = 'The Shinning'),
		(SELECT idBusinessPartner FROM BusinessPartners WHERE type = 'The eXile')
        (SELECT idReview FROM Reviews
        WHERE description = 'A masterpice of horror! The Shinning is a must watch movie for all!'));

INSERT INTO FilmReviews (idFilm, idBusinessPartner, idReview)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Halloween (2018)'),
		(SELECT idBusinessPartner FROM BusinessPartners WHERE type = 'IGN')
        (SELECT idReview FROM Reviews
        WHERE description = 'It is decent! The Jumpscares were pretty cheap'));

INSERT INTO FilmReviews (idFilm, idBusinessPartner, idReview)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Avengers: Infinity War'),
		(SELECT idBusinessPartner FROM BusinessPartners WHERE type = 'IGN')
        (SELECT idReview FROM Reviews
        WHERE description = 'Avenger UNITE!!!'));

INSERT INTO FilmReviews (idFilm, idBusinessPartner, idReview)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Avengers: Infinity War'),
		(SELECT idBusinessPartner FROM BusinessPartners WHERE type = 'Buzzfeed')
        (SELECT idReview FROM Reviews
        WHERE description = 'Not enough black ppl.'));

INSERT INTO FilmReviews (idFilm, idBusinessPartner, idReview)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Terminator 2: Judgement Day'),
		(SELECT idBusinessPartner FROM BusinessPartners WHERE type = 'The eXile')
        (SELECT idReview FROM Reviews
        WHERE description = 'This is one of THE BEST sequels ever to be made period!'));

/*Inserting PRODUCTIONCOMPANIES*/

INSERT INTO ProducitonCompanies (idPostCode, name, idParentCompany, description)
VALUES ((SELECT idPostCode FROM PostCodes WHERE code = '94112'), 'WarnerMedia',
	NULL, 'Parent Company');

INSERT INTO ProducitonCompanies (idPostCode, name, idParentCompany, description)
VALUES ((SELECT idPostCode FROM PostCodes WHERE code = '94112'), 'WarnerBros',
	(SELECT idProductionCompany FROM ProducitonCompanies WHERE name = 'WarnerMedia'),
    'Child Company');

INSERT INTO ProducitonCompanies (idPostCode, name, idParentCompany, description)
VALUES ((SELECT idPostCode FROM PostCodes WHERE code = '94112'), 'Disney',
	NULL, 'Parent Company');

INSERT INTO ProducitonCompanies (idPostCode, name, idParentCompany, description)
VALUES ((SELECT idPostCode FROM PostCodes WHERE code = '94112'), 'PIXAR',
	(SELECT idProductionCompany FROM ProducitonCompanies WHERE name = 'Disney'),
    'Child Company');

INSERT INTO ProducitonCompanies (idPostCode, name, idParentCompany, description)
VALUES ((SELECT idPostCode FROM PostCodes WHERE code = '0001'), 'Shueisha',
	NULL, 'Parent Company');

INSERT INTO ProducitonCompanies (idPostCode, name, idParentCompany, description)
VALUES ((SELECT idPostCode FROM PostCodes WHERE code = '0001'), 'Toei Animation',
	(SELECT idProductionCompany FROM ProducitonCompanies WHERE name = 'Shueisha'),
    'Child Company');

INSERT INTO ProducitonCompanies (idPostCode, name, idParentCompany, description)
VALUES ((SELECT idPostCode FROM PostCodes WHERE code = '3320'), 'StroleInc', NULL,
    'Solo Company');

/*Inserting into FILMCOMPANY*/

INSERT INTO FilmCompany (idFilm, idProductionCompany)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Dragon Ball Z: Battle of Gods'),
	(SELECT idProductionCompany FROM ProducitonCompanies WHERE name = 'Toei Animation'));

INSERT INTO FilmCompany (idFilm, idProductionCompany)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Avengers: Infinity War'),
	(SELECT idProductionCompany FROM ProducitonCompanies WHERE name = 'Disney'));

INSERT INTO FilmCompany (idFilm, idProductionCompany)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Isle of Dogs'),
	(SELECT idProductionCompany FROM ProducitonCompanies WHERE name = 'Disney'));

INSERT INTO FilmCompany (idFilm, idProductionCompany)
VALUES ((SELECT idFilm FROM Films WHERE name = 'Terminator 2: Judgement Day'),
	(SELECT idProductionCompany FROM ProducitonCompanies WHERE name = 'WarnerMedia'));


/*POZIVEDBE SELECT / UPDATE / DELETE IN ALTER PRIMERI*/
/*Select primeri*/
SELECT * FROM People;

SELECT *
	FROM People
    WHERE name = 'Domen';

SELECT * FROM Films WHERE idFranchise IS NOT NULL;

SELECT c.name || ' ' || pc.code AS "Country and PostCode"
FROM Countries c INNER JOIN PostCodes pc USING (idCountry);

SELECT Code, COUNT (idPerson) AS "Number of People"
FROM PostCodes INNER JOIN People USING (idPostCode)
GROUP BY Code
HAVING COUNT (idPostCode) > 1
ORDER BY COUNT (idPostCode) DESC;

SELECT name, surname, gender, email
	FROM People
    WHERE (LOWER(name) LIKE '%a%')
    	AND (UPPER(surname) LIKE 'J%');

SELECT *
	FROM Films
    	WHERE (budget BETWEEN '20000000' AND '900000000');

SELECT email
	FROM People
    WHERE (surname IN ('Javornik', 'Stropnik', 'Kojima'));

SELECT f.name
	FROM Films f INNER JOIN Countries c USING (idCountry)
    WHERE f.idCountry != (SELECT idCountry FROM Countries WHERE acronym = 'USA');

SELECT DISTINCT (c.name), COUNT (pc.code)
	FROM Countries c INNER JOIN PostCodes pc USING (idCountry)
    GROUP BY c.name
    ORDER BY COUNT(pc.code) DESC;

/*Update*/

UPDATE Countries SET description = 'Canada is a large country north of the USA';
SELECT description FROM Countries WHERE acronym = 'CAN';

/*Delete*/

DELETE FROM Franchises WHERE franchise = 'Friday the 13th';
SELECT franchise FROM Franchises;

/*Alter*/

ALTER TABLE People
	ADD DateOfBirth DATE;
SELECT DateOfBirth FROM People;