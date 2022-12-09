/*QUERIES - Distinct*/

-- alle Sektoren
    SELECT
        sector
    FROM sandro.stocks
    #ORDER BY sector ASC
    LIMIT 5;

-- nur das 1. Auftreten eines Datums wird betrachtet
-- welche VERSCHIEDENE Sektoren gibt es?
    SELECT
        DISTINCT sector Industriesektoren
    FROM sandro.stocks
    #ORDER BY sector ASC
    ORDER BY Industriesektoren DESC
    LIMIT 5;

-- welche VERSCHIEDENEN Branchen gibt es?
    SELECT
        DISTINCT industry Branchen
    FROM sandro.stocks
    #ORDER BY industry ASC
    ORDER BY Branchen DESC;

-- welche VERSCHIEDENEN Auszahlungs-Rhythmen gibt es?
    SELECT
        DISTINCT payouts "Auszahlungen p.a."
    FROM sandro.stocks
    ORDER BY payouts ASC;

-- welche Unternehmen zahlen monatlich?
    SELECT
        industry Branche,
        c_name Unternehmen,
        ticker "DOW-SYMBOL"
    FROM sandro.stocks
    WHERE payouts = 12
    ORDER BY Branche ASC;
