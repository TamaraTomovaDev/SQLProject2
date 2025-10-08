# (a) Toon een lijst van alle biernamen en hun categorie-naam van alle bieren met 0% alcohol. (31)
    SELECT beers.Name, brewers.Name
    FROM beers
    INNER JOIN brewers ON beers.BrewerId = brewers.Id
    WHERE Alcohol = 0;

# (b) Toon een lijst van alle brouwers met de prijs van hun duurste bier. (records 113 - gedeeltelijk resultaat: Achouffe- 3.06 Alken - 4.5)
    SELECT brewers.Name, MAX(beers.price)
    FROM brewers
    INNER JOIN beers ON brewers.Id = beers.BrewerId
    GROUP BY brewers.Name;

# (c) Toon ‘alle’ bieren met een id tussen 1500 en 1600 met hun eventuele brouwer(naam). (41) SQL - 30/41
    SELECT beers.Id, brewers.Name
    FROM beers
    LEFT JOIN brewers ON beers.BrewerId = brewers.Id
    WHERE beers.Id BETWEEN 1500 and 1600;

# (d) Toon de top 3 bieren (id en naam) met het meeste alcohol samen met de naam van de brouwer en de categorienaam.
    SELECT beers.Id, beers.Name, brewers.Name, categories.Category
    FROM beers
    INNER JOIN brewers ON beers.BrewerId = brewers.Id
    INNER JOIN categories ON beers.CategoryId = categories.Id
    ORDER BY beers.Alcohol DESC
    LIMIT 3;