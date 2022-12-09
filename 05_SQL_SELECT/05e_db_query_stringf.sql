/* String-Funktionen */

/*
    CONCAT() / Verknuepfung "string" + "string" ...
    UPPER() --> alles in Großbuchstaben
    LOWER() --> alles in Kleinbuchstaben
    LENGTH() --> String-Laenge
    REPLACE() --> Ersetzen von Stringanteilen
    TRIM() --> Trimmen vor/nach String (Whitespace)
*/

-- CONCAT() / Verknuepfung "string" + "string" ....
    SELECT
        ticker AS "SYM",
        c_name "Unternehmen",
        concat("Ops: ",sector," : ",industry) "Operation"
    FROM sandro.stocks
    #ggf. Restriktionen
    LIMIT 3;
   
-- UPPER() --> alles in Großbuchstaben
    SELECT
        ticker AS "SYM",
        upper(c_name) "Unternehmen"
    FROM sandro.stocks
    #ggf. Restriktionen
    LIMIT 3;
   
-- LOWER() --> alles in Kleinbuchstaben (zb. bei mail-Adressen
    SELECT
        ticker AS "SYM",
        lower(c_name) "Unternehmen"
    FROM sandro.stocks
    #ggf. Restriktionen
    LIMIT 3;

-- LENGTH() / char_length()--> String-Laenge
    SELECT
        ticker SYM,
        c_name Unternehmen,
        concat("Ops: ",sector," : ",industry) Operation,
        length(concat("Ops: ",sector,":",industry)) StrLen -- in Byte
        #char_length(concat("Ops: ",sector,":",industry)) StrLen -- in Chars
    FROM sandro.stocks
    ORDER BY StrLen DESC
    LIMIT 5;
   
-- REPLACE() --> Ersetzen von Stringanteilen
    SELECT
        ticker AS "SYM",
        c_name "Unternehmen",
        replace(c_name,"Inc.","Incorporated") AS "Incorporated"
        #replace(c_name,"Corp.","Corporation") AS "Corporation"
    FROM sandro.stocks
    WHERE c_name LIKE "%Inc."
    #WHERE c_name LIKE "%Corp."
    LIMIT 5;

-- TRIM() --> Trimmen vor/nach String (Whitespace) Siehe Link
    -- Siehe LINK: https://dev.mysql.com/doc/refman/5.6/en/string-functions.html