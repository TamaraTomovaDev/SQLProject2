#  (a) Geef een lijst van alle biercategorieën.
SELECT Category FROM categories;

# (b) Toon de lijst van categorieën in dalende alfabetische volgorde zonder de categorie-id’s.
SELECT Category FROM categories ORDER BY Category DESC;

# (c) Toon een lijst van alle brouwerijen die meer dan 5000 Euro turnover hebben.
SELECT Name, Turnover FROM brewers WHERE Turnover > 5000;

# (d) Toon nu enkel de naam en de stad van de brouwerijen die < 5000 Euro turnover, maar niet 0. Sorteer de lijst op basis van de turnover
SELECT Name FROM brewers WHERE Turnover BETWEEN 1 and 5000 ORDER BY Turnover;

# (e) Geef een lijst van alle mogelijke alcoholgehaltes in de beers tabel. Dus geen dubbels. En gesorteerd van groot naar klein.
SELECT DISTINCT Alcohol FROM beers ORDER BY Alcohol DESC ;

# (f) Toon alle namen van bieren waarvan de naam “wit” bevat zonder dubbels, alfabetisch gesorteerd.
SELECT DISTINCT name FROM beers WHERE Name LIKE  '%wit%' ORDER BY name ASC ;

# (g) Toon alle bieren met meer alcohol dan 3 en minder dan 7 zonder gebruik te maken van logische operatoren (<, >, …) (568)
SELECT * FROM beers WHERE Alcohol between 4 and 6;

# (h) Geef de top 3 van de sterkste bieren in onze database.
SELECT name, Alcohol FROM beers ORDER BY 2 DESC limit 3;

# (i) Doordenker: Maak een lijst van de naam, straat, postcode en stad voor alle brouwers in 3 kolommen voor een adressenlijst. M.a.w. combineer de postcode en de stad in 1 kolom.
SELECT name, Address, concat(ZipCode, ' ', City) AS ZipCodeEndCity FROM brewers;