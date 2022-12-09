/* QUERIES - count()*/

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/

-- WELCHE verschiedenen Sektoren gibt es?
    SELECT
        DISTINCT sector Industriesektoren
    FROM sandro.stocks
    ORDER BY sector ASC;

    -- WIEVIELE verschiedene Sektoren gibt es?
    SELECT
        count(DISTINCT sector) "Anzahl Industriesektoren"
    FROM sandro.stocks;

-- WELCHE verschiedenen Branchen ?
    SELECT
        DISTINCT industry Branchen
    FROM sandro.stocks
    ORDER BY Branchen ASC;

    -- WIEVIELE verschiedene Branchen ?
    SELECT
        count(DISTINCT industry) "Anzahl Branchen"
    FROM sandro.stocks;

-- Wieviele VERSCHIEDENE Branchen gibt es 
-- in den jeweiligen Industriesektoren?
    SELECT
        sector Industriesektoren,              -- nicht aggregiert / organisch
        count(DISTINCT industry) AS Branchen   -- aggregiert / durch eine Fkt. entstanden
    FROM sandro.stocks
    WHERE sector LIKE "Co%"                    -- Filter in NICHT aggr.(organischen) Feldern
    GROUP BY sector                            -- bei Kombination organisch /aggr.
    HAVING Branchen > 10                       -- Filter in aggr. Felder / nach GROUP
    ORDER BY Branchen DESC;
