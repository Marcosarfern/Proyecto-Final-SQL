-- Función para Obtener el Total de Ventas por Tipo de Servicio
DELIMITER //

CREATE FUNCTION TotalVentasPorTipoServicio(tipo_servicio_id INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(f.TOTAL)
    INTO total
    FROM FACTURAS f
    JOIN SOLICITUD s ON f.ID_SOLICITUD = s.ID_SOLICITUD
    WHERE s.ID_TIPODESERVICIO = tipo_servicio_id;

    RETURN IFNULL(total, 0.00); -- Devuelve 0 si no hay ventas
END //

DELIMITER ;
