-- Función para Calcular el Total de Ventas
--Una función que devuelve el total de ventas acumuladas en un período específico.

CREATE FUNCTION TotalVentasPorFecha(inicio DATETIME, fin DATETIME) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    
    SELECT IFNULL(SUM(f.TOTAL), 0.00) INTO total
    FROM FACTURAS f
    WHERE f.FECHA_FACTURA BETWEEN inicio AND fin;

    RETURN total;
END;

