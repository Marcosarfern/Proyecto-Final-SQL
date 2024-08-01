-- Insertar datos en la tabla TIPODESERVICIO
INSERT INTO TIPODESERVICIO (TIPO) VALUES
('Limpieza'),
('Mantenimiento'),
('Reparación'),
('Construcción'),
('Jardinería'),
('Plomería'),
('Electricidad'),
('Pintura'),
('Climatización');

-- Insertar datos en la tabla PARTICULARES
INSERT INTO PARTICULARES (NOMBRE, TELEFONO, EMAIL, DIRECCION, DOCUMENTO) VALUES
('Juan Pérez', '555-0101', 'juanperez@example.com', 'Calle Falsa 123', '1234567890'),
('Ana Gómez', '555-0102', 'anagomez@example.com', 'Av. Siempre Viva 456', '0987654321'),
('Luis Martínez', '555-0103', 'luismartinez@example.com', 'Paseo del Río 789', '1357924680'),
('María López', '555-0104', 'marialopez@example.com', 'Calle del Sol 321', '2468135790'),
('Carlos Ruiz', '555-0105', 'carlosruiz@example.com', 'Plaza Central 111', '1112233445'),
('Sofía Torres', '555-0106', 'sofitorres@example.com', 'Calle del Bosque 222', '5556677889'),
('Miguel Angel', '555-0107', 'miguelangel@example.com', 'Calle del Mar 333', '1231231234'),
('Laura Fernández', '555-0108', 'laurafernandez@example.com', 'Calle de la Luna 444', '9876543210'),
('Pedro Castillo', '555-0109', 'pedrocastillo@example.com', 'Av. del Parque 555', '3216549870'),
('Camila Romero', '555-0110', 'camilaromero@example.com', 'Calle de las Flores 666', '6543217890'),
('Fernando Cordero', '555-0111', 'fernandocordero@example.com', 'Calle de la Paz 777', '1597534862'),
('Patricia Ortega', '555-0112', 'patriciaortega@example.com', 'Av. Libertad 888', '7531594862'),
('Héctor García', '555-0113', 'hectorgarcia@example.com', 'Calle de los Abetos 999', '8521479630'),
('Valeria Medina', '555-0114', 'valeriamedina@example.com', 'Calle del Norte 101', '9632587410'),
('Raúl Jiménez', '555-0115', 'rauljimenez@example.com', 'Calle de la Esperanza 202', '7894561230');

-- Insertar datos en la tabla EMPRESAS
INSERT INTO EMPRESAS (NOMBRE, TELEFONO, EMAIL, DIRECCION) VALUES
('Empresa A', '555-1001', 'contacto@empresaa.com', 'Calle Principal 1'),
('Empresa B', '555-1002', 'contacto@empresab.com', 'Calle Secundaria 2'),
('Empresa C', '555-1003', 'contacto@empresac.com', 'Calle Tercera 3'),
('Empresa D', '555-1004', 'contacto@empresad.com', 'Calle Cuarta 4'),
('Empresa E', '555-1005', 'contacto@empresa.com', 'Calle Quinto 5'),
('Empresa F', '555-1006', 'contacto@empresaf.com', 'Calle Sexta 6'),
('Empresa G', '555-1007', 'contacto@empresag.com', 'Calle Séptima 7'),
('Empresa H', '555-1008', 'contacto@empresah.com', 'Calle Octava 8'),
('Empresa I', '555-1009', 'contacto@empresai.com', 'Calle Novena 9'),
('Empresa J', '555-1010', 'contacto@empresaj.com', 'Calle Décima 10'),
('Empresa K', '555-1011', 'contacto@empresak.com', 'Calle Undécima 11'),
('Empresa L', '555-1012', 'contacto@empresal.com', 'Calle Duodécima 12'),
('Empresa M', '555-1013', 'contacto@empresam.com', 'Calle Decimotercera 13'),
('Empresa N', '555-1014', 'contacto@empresan.com', 'Calle Decimocuarta 14'),
('Empresa O', '555-1015', 'contacto@empresao.com', 'Calle Decimoquinta 15');

-- Insertar datos en la tabla EMPLEADOS
INSERT INTO EMPLEADO (NOMBRE, TELEFONO, EMAIL, ID_TIPODESERVICIO, DISPONIBILIDAD, CALIFICACION) VALUES
('David Sánchez', '555-2001', 'davidsanchez@example.com', 1, TRUE, 4),
('Sergio López', '555-2002', 'sergiolopez@example.com', 2, TRUE, 5),
('Clara Ruiz', '555-2003', 'clararuiz@example.com', 3, TRUE, 3),
('Beatriz Morales', '555-2004', 'beatrizmorales@example.com', 4, FALSE, 4),
('Jorge Herrera', '555-2005', 'jorgeherrera@example.com', 5, TRUE, 5),
('Angela Castillo', '555-2006', 'angelacastillo@example.com', 6, TRUE, 4),
('Ricardo Ramos', '555-2007', 'ricardoramos@example.com', 7, TRUE, 5),
('Patricia Vargas', '555-2008', 'patriciavargas@example.com', 8, FALSE, 2),
('Mario Torres', '555-2009', 'mariot@example.com', 9, TRUE, 4),
('Cristina Mendoza', '555-2010', 'cristinac@example.com', 10, TRUE, 5),
('Hugo López', '555-2011', 'hugol@example.com', 1, TRUE, 4),
('Felipe Díaz', '555-2012', 'feliped@example.com', 2, FALSE, 3),
('Juliana Romero', '555-2013', 'julianar@example.com', 3, TRUE, 5),
('Laura Castro', '555-2014', 'laurac@example.com', 4, TRUE, 4),
('Oscar Paredes', '555-2015', 'oscarp@example.com', 5, FALSE, 2);

-- Insertar datos en la tabla MEDIODEPAGO
INSERT INTO MEDIODEPAGO (EFECTIVO, TARJETA, BILLETERA_VIRTUAL, ACREDITADO) VALUES
(100, 200, 50, TRUE),
(150, 250, 75, FALSE),
(200, 300, 100, TRUE),
(250, 350, 125, TRUE),
(300, 400, 150, FALSE),
(350, 450, 175, TRUE),
(400, 500, 200, FALSE),
(450, 550, 225, TRUE),
(500, 600, 250, TRUE),
(550, 650, 275, FALSE),
(600, 700, 300, TRUE),
(650, 750, 325, TRUE),
(700, 800, 350, FALSE),
(750, 850, 375, TRUE),
(800, 900, 400, FALSE);

-- Insertar datos en la tabla CLIENTE
INSERT INTO CLIENTE (ID_PARTICULARES, ID_EMPRESAS) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(NULL, 1),
(NULL, 2),
(NULL, 3),
(NULL, 4),
(NULL, 5),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(NULL, 6);

-- Insertar datos en la tabla SOLICITUD
INSERT INTO SOLICITUD (ID_CLIENTE, ID_TIPODESERVICIO, ID_EMPLEADOS, FECHA, ID_MEDIO_DE_PAGO) VALUES
(1, 1, 1, '2024-07-01 09:00:00', 1),
(2, 2, 2, '2024-07-02 10:00:00', 2),
(3, 3, 3, '2024-07-03 11:00:00', 3),
(4, 4, 4, '2024-07-04 12:00:00', 4),
(5, 5, 5, '2024-07-05 13:00:00', 5),
(6, 6, 6, '2024-07-06 14:00:00', 6),
(7, 7, 7, '2024-07-07 15:00:00', 7),
(8, 8, 8, '2024-07-08 16:00:00', 8),
(9, 9, 9, '2024-07-09 17:00:00', 9),
(10, 1, 10, '2024-07-10 18:00:00', 10),
(11, 2, 1, '2024-07-11 19:00:00', 11),
(12, 3, 2, '2024-07-12 20:00:00', 12),
(13, 4, 3, '2024-07-13 21:00:00', 13),
(14, 5, 4, '2024-07-14 22:00:00', 14),
(15, 1, 5, '2024-07-15 23:00:00', 15);

-- Insertar datos en la tabla NOTIFICACIONES
INSERT INTO NOTIFICACIONES (ID_CLIENTE, ID_EMPLEADO, MENSAJE, FECHA, LEIDO) VALUES
(1, 1, 'Su solicitud de limpieza ha sido registrada.', '2024-07-01 08:00:00', FALSE),
(2, 2, 'Mantenimiento programado para el 02 de julio.', '2024-07-02 09:00:00', TRUE),
(3, 3, 'Su reparación está en proceso.', '2024-07-03 10:00:00', FALSE),
(4, 4, 'Construcción programada para el 04 de julio.', '2024-07-04 11:00:00', TRUE),
(5, 5, 'Jardinería confirmada para el 05 de julio.', '2024-07-05 12:00:00', FALSE),
(6, 6, 'Plomería requerida en su domicilio.', '2024-07-06 13:00:00', TRUE),
(7, 7, 'Electricidad revisada en su hogar.', '2024-07-07 14:00:00', FALSE),
(8, 8, 'Su solicitud de pintura ha sido aprobada.', '2024-07-08 15:00:00', TRUE),
(9, 9, 'Climatización ha sido realizada con éxito.', '2024-07-09 16:00:00', FALSE),
(10, 10, 'Su consulta ha sido respondida.', '2024-07-10 17:00:00', TRUE),
(1, 1, 'Notificación adicional sobre su servicio.', '2024-07-11 18:00:00', TRUE),
(2, 2, 'Recuerde su cita de mantenimiento.', '2024-07-12 19:00:00', FALSE),
(3, 3, 'Su comentario ha sido recibido.', '2024-07-13 20:00:00', TRUE),
(4, 4, 'Próxima cita de construcción.', '2024-07-14 21:00:00', FALSE),
(5, 5, 'Su servicio de jardinería está confirmado.', '2024-07-15 22:00:00', TRUE);

-- Insertar datos en la tabla FACTURAS
INSERT INTO FACTURAS (ID_SOLICITUD, FECHA_FACTURA, TOTAL, PAGADO) VALUES
(1, '2024-07-01 09:00:00', 100.00, TRUE),
(2, '2024-07-02 10:00:00', 150.00, FALSE),
(3, '2024-07-03 11:00:00', 200.00, TRUE),
(4, '2024-07-04 12:00:00', 250.00, FALSE),
(5, '2024-07-05 13:00:00', 300.00, TRUE),
(6, '2024-07-06 14:00:00', 350.00, FALSE),
(7, '2024-07-07 15:00:00', 400.00, TRUE),
(8, '2024-07-08 16:00:00', 450.00, FALSE),
(9, '2024-07-09 17:00:00', 500.00, TRUE),
(10, '2024-07-10 18:00:00', 550.00, FALSE),
(11, '2024-07-11 19:00:00', 600.00, TRUE),
(12, '2024-07-12 20:00:00', 650.00, FALSE),
(13, '2024-07-13 21:00:00', 700.00, TRUE),
(14, '2024-07-14 22:00:00', 750.00, FALSE),
(15, '2024-07-15 23:00:00', 800.00, TRUE);

-- Insertar datos en la tabla TIEMPOS_SERVICIO
INSERT INTO TIEMPOS_SERVICIO (ID_SOLICITUD, TIEMPO_ESTIMADO, TIEMPO_REAL) VALUES
(1, 60, 50),
(2, 120, 110),
(3, 90, 80),
(4, 150, 140),
(5, 180, 160),
(6, 60, 65),
(7, 90, 85),
(8, 120, 115),
(9, 150, 140),
(10, 180, 170),
(11, 60, 55),
(12, 90, 88),
(13, 120, 110),
(14, 150, 140),
(15, 180, 175);


