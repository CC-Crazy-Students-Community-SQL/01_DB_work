/* Import CSV mit Index */

/* DB */
    DROP DATABASE IF EXISTS sandro;
    CREATE DATABASE IF NOT EXISTS sandro;

/* show DBs */
    SHOW DATABASES;

/* TABLE */
    DROP TABLE IF EXISTS sandro.stocks;
    CREATE TABLE IF NOT EXISTS sandro.stocks(
        id INT NOT NULL PRIMARY KEY,        -- ID
        c_name VARCHAR(50) NOT NULL,        -- Name des Unternehmens
        ticker VARCHAR(5) NOT NULL,  	    -- DOW Ticker-Symbol
        sector VARCHAR(50) NOT NULL, 	    -- Industrie-Sektor
        industry VARCHAR(60) NOT NULL,	    -- Branche
        no_yrs INT(2) NOT NULL,		        -- Jahre, seitdem ununterbrochen Dividende gesteigert werden
        ranking INT NOT NULL,	            -- Ranking in der Liste
        price DECIMAL(6,2) NOT NULL,	    -- Preis pro Aktie in $ per 12/2019
        yield DECIMAL(6,4) NOT NULL,	    -- Dividendenrendite (Dividendenanteil *100) / Aktienkurs
        dividend DECIMAL(6,4) NOT NULL,	    -- Dividendenanteil pro Aktie (Ausschuettung)
        payouts INT(2) NOT NULL,		    -- wieviel mal wird pro Jahr gezahlt?
        annualized DECIMAL(4,2) NOT NULL	-- jaehrlich    
    );
    /*
        Decimal Datentyp:

        Er wird wie folgt bezeichnet: decimal [(p [,s])]
            p steht für Precision, die Gesamtzahl der Ziffern des Werte auf beiden Seiten des Dezimalpunktes
            s steht für Skalierung, die Anzahl der Stellen nach dem Dezimalpunkt

        Der Standardwert von p ist 18 und s ist 0, Minimum für beide 1 und das Maximum 38

        Beispiel: 
            Dezimal (4,2) 
                4 = 4 Zahlen gesamt  ####
                2 = 2 nach dem Komma ,##
                aber es bleiben 4 gesamt
                also ##,##

            Dezimal (3,1) 
                3 = 3 Zahlen gesamt  ###
                1 = 1 nach dem Komma ,#
                aber es bleiben 3 gesamt
                also ##,#
    */

/* Import - CSV-Datei parsen */
    LOAD DATA LOCAL INFILE "05_SQL_SELECT/data/ccc_dez_2019.csv" INTO TABLE sandro.stocks FIELDS TERMINATED BY ";" LINES TERMINATED BY "\n" IGNORE 1 ROWS;

/* show Table */
    SELECT * FROM sandro.stocks LIMIT 5;