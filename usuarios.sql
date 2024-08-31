-- Crear Usuario 1
CREATE USER 'usuario_contable1'@'localhost' IDENTIFIED BY 'contraseña1';
GRANT SELECT ON proyecto_appservcios.FACTURAS TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.EMPLEADO TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.CLIENTE TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.MEDIODEPAGO TO 'usuario_contable1'@'localhost';

-- Crear Usuario 2
CREATE USER 'usuario_contable2'@'localhost' IDENTIFIED BY 'contraseña2';
GRANT SELECT ON proyecto_appservcios.FACTURAS TO 'usuario_contable2'@'localhost';
GRANT SELECT ON proyecto_appservicios.EMPLEADO TO 'usuario_contable2'@'localhost';
GRANT SELECT ON proyecto_appservicios.CLIENTE TO 'usuario_contable2'@'localhost';
GRANT SELECT ON proyecto_appservicios.MEDIODEPAGO TO 'usuario_contable2'@'localhost';

-- Crear Usuario 3
CREATE USER 'usuario_contable3'@'localhost' IDENTIFIED BY 'contraseña3';
GRANT SELECT ON proyecto_appservicios.FACTURAS TO 'usuario_contable3'@'localhost';
GRANT SELECT ON proyecto_appservicios.EMPLEADO TO 'usuario_contable3'@'localhost';
GRANT SELECT ON proyecto_appservicios.CLIENTE TO 'usuario_contable3'@'localhost';
GRANT SELECT ON proyecto_appservicios.MEDIODEPAGO TO 'usuario_contable3'@'localhost';

-- Aplicar los cambios
FLUSH PRIVILEGES;


