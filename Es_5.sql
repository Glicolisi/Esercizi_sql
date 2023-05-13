CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700),
('Ostriche e caviale', 2676554, 300);

CREATE TABLE MEAL_ORDER (
  TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW(),
  MEAL_NAME VARCHAR(255)
);
  
    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (NOW(), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesta Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME) 
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti Bolognese');
    
    SELECT CONCAT (MEAL_NAME,' = Crimine verso la cucina') AS TRUE_MEAL #Aggiunge una stringa a MEAL_NAME
    FROM MEAL_ORDER;
    
    SELECT LOWER (MEAL_NAME) AS LOWER_MEAL  #Mette in minuscolo la colonna MEAL_NAME
    FROM MEAL_ORDER;
    
    SELECT UPPER (MEAL_NAME) AS UPPER_MEAL  #Mette in MAIUSCOLO la colonna MEAL_NAME
    FROM MEAL_ORDER;
    
    SELECT TRIM (MEAL_NAME) AS TRIM_MEAL  #Mette in minuscolo la colonna MEAL_NAME
    FROM MEAL_ORDER;
    
    SELECT TRIM(MEAL_NAME) AS TRIM_MEAL  #Dovrebbe togliere gli spazi dalla colonna MEAL_NAME
    FROM MEAL_ORDER;
    
    SELECT LENGTH(MEAL_NAME) AS LENGTH_MEAL  #Restituisce la lunghezza di ogni elemento della colonna
    FROM MEAL_ORDER;
    
    SELECT SUBSTRING(MEAL_NAME, 1, 5) AS SUBSTRING_MEAL #Restituisce la parte di stringa selezionata dal primo int fino al secondo int
    FROM MEAL_ORDER;
    
    SELECT ROUND(PRICE,1) AS ROUND_PRICE #Arrotonda il numero selezionato per le cifre decimali specificate
    FROM MEAL;
    
    SELECT DATE_ADD(TIME_MEAL_ORDERED, INTERVAL 2 HOUR ) AS NUOVA_DATA # Aumenta la data selezionata del tempo indicato
    FROM MEAL_ORDER;
    
    SELECT DATE_SUB(TIME_MEAL_ORDERED, INTERVAL 2 HOUR ) AS NUOVA_DATA # Diminuisce la data selezionata del tempo indicato
    FROM MEAL_ORDER;
    
    SELECT FORMAT(PRICE,1) AS FORMAT_PRICE # Mette il separatore di migliaia alle cifre e arrotonda ai decimali indicati
    FROM MEAL;
    
    SELECT DATE_ADD(DATE_ADD(NOW(), INTERVAL 9 DAY), INTERVAL 8 MONTH) AS MIO_COMPLEANNO;
    
    SELECT CONCAT(SUBSTRING(NOW(), 1, 11), '00:00:00') AS MIDNIGHT;
    
    
    
    
    
    
    
    