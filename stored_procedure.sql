--Crear el Stored Procedure
--Este stored procedure inserta un nuevo tipo de servicio en la tabla TIPODESERVICIO:

DELIMITER //

CREATE PROCEDURE AgregarTipoDeServicio(
    IN tipo_servicio VARCHAR(50)
)
BEGIN
    INSERT INTO TIPODESERVICIO (TIPO) VALUES (tipo_servicio);
END //

DELIMITER ;


-- Ejemplo para utilizar este stored procedure se usa:
CALL AgregarTipoDeServicio('Servicio Nuevo');

-- Para verificar la inserción:
SELECT * FROM TIPODESERVICIO;




