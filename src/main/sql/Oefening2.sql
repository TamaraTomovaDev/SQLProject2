# (a) Hoeveel verschillende brouwers zitten er in de database? (118)
SELECT COUNT(Name)
FROM brewers;

#(b) Bereken de gemiddelde turnover van alle brouwers.(114302.1525)
SELECT AVG(Turnover)
FROM brewers;

# (c) Geef het laagste, gemiddelde en hoogste alcoholgehalte uit de beers tabel in 1 instructie. (0, 5.8706, 15)
SELECT concat(MIN(Alcohol), ',', TRUNCATE(AVG(Alcohol), 4), ',', MAX(Alcohol))
FROM beers;

# (d) Bereken de gemiddelde turnover van alle brouwers in de provincie Brabant (postcodes die beginnen met een 1) maar negeer de brouwerij ‘Palm’. (39525.7143)
SELECT AVG(Turnover)
FROM brewers
WHERE ZipCode LIKE '1%'
  AND Name != 'Palm';

# (e) Bereken het gemiddelde alcohol per categorie(id). (39 records)
SELECT AVG(Alcohol), CategoryId
FROM beers
GROUP BY CategoryId;

# (f) Toon de hoogste bierprijs per categorie maar negeer alle bieren die niet in stock zijn. Sorteer het resultaat
# op categorie id. Zorg er ook voor dat we enkel prijzen zien die hoger zijn dan 3. (5 records)
SELECT MAX(Price), CategoryId
FROM beers
WHERE Stock > 0
AND Price > 3
GROUP BY CategoryId;

SELECT beers.name, brewers.name, categories.category
FROM beers
INNER JOIN brewers ON beers.BrewerId = brewers.Id
INNER JOIN categories ON beers.CategoryId = categories.Id;

SELECT  beers.name, brewers.name
FROM beers, brewers
WHERE beers.BrewerId = brewers.Id;

SELECT Name, Category
FROM categories
LEFT JOIN beers on categories.Id = beers.CategoryId;

SELECT b1.name, b2.name
FROM brewers As b1 INNER JOIN brewers AS b2
ON b1.City = b2.City AND b1.Id < b2.Id;