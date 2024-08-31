--USUARIO ADMIN --
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'TuContraseñaSegura';
GRANT ALL PRIVILEGES ON proyecto_appservcios.* TO 'admin'@'localhost';
FLUSH PRIVILEGES;

--USUARIO FINANZAS --
CREATE USER 'usuario_contable1'@'localhost' IDENTIFIED BY 'contraseña1';
GRANT SELECT ON proyecto_appservcios.FACTURAS TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.EMPLEADO TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.CLIENTE TO 'usuario_contable1'@'localhost';
GRANT SELECT ON proyecto_appservcios.MEDIODEPAGO TO 'usuario_contable1'@'localhost';

-- Aplicar los cambios
FLUSH PRIVILEGES;

--USUARIO MARKETING --
