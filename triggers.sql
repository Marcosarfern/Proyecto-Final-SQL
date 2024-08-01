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


--Insertar un Comentario
--Para probar el trigger, insertemos un nuevo comentario en la tabla COMENTARIOS. Asegúrate de tener al menos un cliente y una solicitud existente para usar en este ejemplo:
INSERT INTO COMENTARIOS (ID_SOLICITUD, ID_CLIENTE, CALIFICACION, COMENTARIO, FECHA)
VALUES (1, 1, 2, 'El servicio fue muy deficiente.', NOW());


--Verificar la Inserción en MALAS_CALIFICACIONES
--Después de realizar la inserción, puedes verificar si la mala calificación se registró correctamente en la tabla MALAS_CALIFICACIONES:
SELECT * FROM MALAS_CALIFICACIONES;
