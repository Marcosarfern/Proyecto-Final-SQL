--USUARIO ADMIN --
CREATE USER 'usuario_admin'@'localhost' IDENTIFIED BY 'Admin1';
GRANT ALL PRIVILEGES ON proyecto_appservcios.* TO 'admin'@'localhost';
FLUSH PRIVILEGES;

--USUARIO FINANZAS --
CREATE USER 'usuario_contable'@'localhost' IDENTIFIED BY 'Finanzas1';
GRANT SELECT ON proyecto_appservcios.FACTURAS TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.EMPLEADO TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.CLIENTE TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.MEDIODEPAGO TO 'usuario_contable1'@'localhost';

-- Aplicar los cambios
FLUSH PRIVILEGES;

--USUARIO MARKETING --
CREATE USER 'usuario_marketing'@'localhost' IDENTIFIED BY 'Marketing1';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_appservcios.CLIENTE TO 'usuario_marketing'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_appservcios.NOTIFICACIONES TO 'usuario_marketing'@'localhost';
FLUSH PRIVILEGES;
