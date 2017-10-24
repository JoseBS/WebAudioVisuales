
/****
***** PROCEDURES Y TRIGGERS DEL ESQUEMA MAGISTRAL *****
****/
/*
USE audio_visuales;

DROP TRIGGER IF EXISTS actualizar_horas_insert;
DELIMITER $$
CREATE TRIGGER actualizar_horas_insert AFTER INSERT ON descansos
    FOR EACH ROW
    BEGIN


        DECLARE horaTemp TIME;
        DECLARE finalJornada TIME;
        DECLARE duracionHora TIME;

        DECLARE maxDescansos INT;
        DECLARE iterator INT;

        DECLARE horaDescanso INT;
        DECLARE duracionDescanso TIME;
        DECLARE descanso TIME;

        SET iterator = 0;

        DELETE horas;
        ALTER TABLE horas AUTO_INCREMENT = 1;

        CREATE TEMPORARY TABLE descansostable (
            id INT NOT NULL AUTO_INCREMENT,
            iniciodescanso TIME NOT NULL,
            duraciondescanso TIME NOT NULL,
            finaldescanso TIME NOT NULL,
            PRIMARY KEY(id)
        );

        INSERT INTO descansostable (iniciodescanso, duraciondescanso, finaldescanso)
            SELECT hora_inicio, duracion, sec_to_time(time_to_sec(hora_inicio) + time_to_sec(duracion)) final
            FROM descansos
            WHERE estado = TRUE
            ORDER BY hora_inicio ASC;

        SELECT hora_inicio_jornada, hora_final_jornada, duracion_hora_academica
        INTO horaTemp, finalJornada, duracionHora
        FROM parametros_horario
        WHERE estado = TRUE;

        SELECT COUNT(id) INTO maxDescansos FROM descansostable;

        IF(maxDescansos > iterator) THEN
            SET iterator = 1;
        END IF;

        SET descanso = (SELECT iniciodescanso FROM descansostable WHERE id = iterator);

        WHILE (horaTemp < finalJornada) DO

            IF(horaTemp > descanso) THEN
                SET horaTemp = (SELECT finaldescanso FROM descansostable WHERE id = iterator);
                SET iterator = iterator + 1;
                SET descanso = (SELECT iniciodescanso FROM descansostable WHERE id = iterator);
            END IF;

            INSERT INTO horas (hora) VALUES (horaTemp);
            SET horaTemp = sec_to_time(time_to_sec(horaTemp) + time_to_sec(duracionHora));

            IF(horaTemp >= finalJornada) THEN
                INSERT INTO horas (hora) VALUES (finalJornada);
            END IF;

        END WHILE;
    END;
$$ DELIMITER ;

DROP TRIGGER IF EXISTS actualizar_horas_update;
DELIMITER $$
CREATE TRIGGER actualizar_horas_update AFTER UPDATE ON descansos
    FOR EACH ROW
    BEGIN
        CALL calculo_horario();
    END;
$$ DELIMITER ;

DROP TRIGGER IF EXISTS actualizar_horas_delete;
DELIMITER $$
CREATE TRIGGER actualizar_horas_delete AFTER DELETE ON descansos
    FOR EACH ROW
    BEGIN
        CALL calculo_horario();
    END;
$$ DELIMITER ;

*/

DROP PROCEDURE IF EXISTS calculo_horario;
DELIMITER $$
CREATE PROCEDURE calculo_horario()
BEGIN

    DECLARE horaTemp TIME;
    DECLARE finalJornada TIME;
    DECLARE duracionHora TIME;

    DECLARE maxDescansos INT;
    DECLARE iterator INT;

    DECLARE horaDescanso INT;
    DECLARE duracionDescanso TIME;
    DECLARE descanso TIME;

    SET iterator = 0;

    TRUNCATE TABLE horas;

    CREATE TEMPORARY TABLE descansostable (
        id INT NOT NULL AUTO_INCREMENT,
        iniciodescanso TIME NOT NULL,
        duraciondescanso TIME NOT NULL,
        finaldescanso TIME NOT NULL,
        PRIMARY KEY(id)
    );

    INSERT INTO descansostable (iniciodescanso, duraciondescanso, finaldescanso)
        SELECT hora_inicio, duracion, sec_to_time(time_to_sec(hora_inicio) + time_to_sec(duracion)) final
        FROM descansos
        WHERE estado = TRUE
        ORDER BY hora_inicio ASC;

    SELECT hora_inicio_jornada, hora_final_jornada, duracion_hora_academica
    INTO horaTemp, finalJornada, duracionHora
    FROM parametros_horario
    WHERE estado = TRUE;

    SELECT COUNT(id) INTO maxDescansos FROM descansostable;

    IF(maxDescansos > iterator) THEN
        SET iterator = 1;
    END IF;

    SET descanso = (SELECT iniciodescanso FROM descansostable WHERE id = iterator);

    WHILE (horaTemp < finalJornada) DO

        IF(horaTemp > descanso) THEN
            SET horaTemp = (SELECT finaldescanso FROM descansostable WHERE id = iterator);
            SET iterator = iterator + 1;
            SET descanso = (SELECT iniciodescanso FROM descansostable WHERE id = iterator);
        END IF;

        INSERT INTO horas (hora) VALUES (horaTemp);
        SET horaTemp = sec_to_time(time_to_sec(horaTemp) + time_to_sec(duracionHora));

        IF(horaTemp >= finalJornada) THEN
            INSERT INTO horas (hora) VALUES (finalJornada);
        END IF;

    END WHILE;
END;
$$ DELIMITER ;
