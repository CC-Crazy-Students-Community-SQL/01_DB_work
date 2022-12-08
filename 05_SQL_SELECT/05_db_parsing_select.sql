/* Import CSV mit Index */

/* cache leeren */
    DBCC FREEPROCCACHE;

/* DB */
    DROP DATABASE IF EXISTS sandro;
    CREATE DATABASE IF NOT EXISTS sandro;

/* show DBs */
    SHOW DATABASES;

/* TABLE */
    DROP TABLE IF EXISTS sandro.companies;
    CREATE TABLE IF NOT EXISTS sandro.companies(
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

/* Import - CSV-Datei parsen */
    LOAD DATA LOCAL INFILE "05_SQL_SELECT/data/ccc_dez_2019.csv" INTO TABLE sandro.companies FIELDS TERMINATED BY ";" LINES TERMINATED BY "\n" IGNORE 1 ROWS;

/* show Table */
    SELECT * FROM sandro.companies LIMIT 5;