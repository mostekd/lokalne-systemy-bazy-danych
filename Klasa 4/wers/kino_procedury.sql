DELIMITER //
CREATE PROCEDURE sp_GetSeanseProfit(IN start_date DATE, IN end_date DATE)
BEGIN
    SELECT 
        f.Nazwa AS Film,
        s.Data_seansu AS Data_Seansu,
        s.Godzina_rozpoczecia AS Godzina_Rozpoczecia,
        SUM(s.Cena) AS Suma_Przychodow
    FROM 
        Seanse s
    JOIN 
        Filmy f ON s.id_film = f.id_film
    WHERE 
        s.Data_seansu BETWEEN start_date AND end_date
    GROUP BY 
        f.Nazwa, s.Data_seansu, s.Godzina_rozpoczecia
    ORDER BY 
        s.Data_seansu, f.Nazwa;
END //
DELIMITER ;

CALL sp_GetSeanseProfit('2023-11-01', '2023-11-30');

DELIMITER //
CREATE PROCEDURE sp_GetEmployeeEfficiency(IN min_salary DECIMAL(10,2), IN max_salary DECIMAL(10,2))
BEGIN
    SELECT 
        CONCAT(p.Imie, ' ', p.Nazwisko) AS Pracownik,
        s.Nazwa AS Stanowisko,
        p.Wynagrodzenie AS Wynagrodzenie,
        DATEDIFF(CURDATE(), p.Data_zatrudnienia) AS Liczba_Przepracowanych_Dni
    FROM 
        Pracownicy p
    JOIN 
        Stanowiska s ON p.id_stanowisko = s.id_stanowisko
    WHERE 
        p.Wynagrodzenie BETWEEN min_salary AND max_salary
    ORDER BY 
        Liczba_Przepracowanych_Dni DESC;
END //
DELIMITER ;

CALL sp_GetEmployeeEfficiency(2000.00, 4000.00);

DELIMITER //
CREATE PROCEDURE sp_GetFilmPopularityByGenre(IN genre_name VARCHAR(50))
BEGIN
    SELECT 
        f.Nazwa AS Film,
        rf.Nazwa AS Rodzaj_Filmu,
        COUNT(z.id_zamowienie) AS Liczba_Zamowien
    FROM 
        Zamowienia z
    JOIN 
        Filmy f ON z.id_film = f.id_film
    JOIN 
        Rodzaje_filmu rf ON f.id_rodzaj_filmu = rf.id_rodzaj_filmu
    WHERE 
        rf.Nazwa = genre_name
    GROUP BY 
        f.Nazwa, rf.Nazwa
    ORDER BY 
        Liczba_Zamowien DESC;
END //
DELIMITER ;

CALL sp_GetFilmPopularityByGenre('Dramat');