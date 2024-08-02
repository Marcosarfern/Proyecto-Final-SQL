--Trigger para Registrar Calificaciones Bajas
--Este trigger podría insertar automáticamente una entrada en la tabla de malas calificaciones cuando un cliente deja una calificación baja.

DELIMITER //

CREATE TRIGGER after_insert_comentario
AFTER INSERT ON COMENTARIOS
FOR EACH ROW
BEGIN
    IF NEW.CALIFICACION < 3 THEN
        INSERT INTO MALAS_CALIFICACIONES (ID_COMENTARIO, ID_CLIENTE, CALIFICACION, FECHA, MOTIVO)
        VALUES (NEW.ID_COMENTARIO, NEW.ID_CLIENTE, NEW.CALIFICACION, NOW(), 'Registro de calificación baja automático');
    END IF;
END //

DELIMITER ;

