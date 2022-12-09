/* Aggregationen MIN/MAX */

-- Preis der teuersten/günstigsten Aktie?
    SELECT
        #max(price) "Max. Preis"
        min(price)  "Min. Preis"
    FROM sandro.stocks;

    SELECT max(price) "Max. Preis" FROM sandro.stocks;
    SELECT min(price) "Min. Preis" FROM sandro.stocks;  

-- WELCHE Aktie ist am teuersten/günstigsten ?
-- 1. Subquery
-- 2. ORDER BY .... ASC/DESC & LIMIT 1
    SELECT
        ticker SYM,
        c_name AS Unternehmen,
        price AS "Kurs in $"
    FROM sandro.stocks
    -- SUBQUERY, hier: zeig mir den max./min. Wert / wichtig: (SELECT ...) !
    #WHERE price = (SELECT min(price) "Min. Preis" FROM sandro.stocks)
    WHERE price = (SELECT max(price) "Max. Preis" FROM sandro.stocks);

    SELECT
        ticker SYM,
        c_name AS Unternehmen,
        price AS "Kurs in $"
    FROM sandro.stocks
    ORDER BY price DESC
    #ORDER BY price ASC
    LIMIT 1;

-- Welches Unternehmen hat die längste Div.-Historie ?
    SELECT
        ticker AS "SYM",
        c_name AS Unternehmen,
        price Aktienkurs 
    FROM sandro.stocks
    ORDER BY no_yrs DESC
    LIMIT 1;
