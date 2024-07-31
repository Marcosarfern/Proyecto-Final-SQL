-- Tabla PARTICULARES
INSERT INTO PARTICULARES (NOMBRE, TELEFONO, EMAIL, DIRECCION, DOCUMENTO) VALUES
('Juan Pérez', '1234567890', 'juan.perez@example.com', 'Calle Falsa 123', '123456789'),
('María López', '0987654321', 'maria.lopez@example.com', 'Avenida Siempre Viva 742', '987654321'),
('Carlos García', '1112223333', 'carlos.garcia@example.com', 'Calle Principal 456', '123123123'),
('Ana Torres', '4445556666', 'ana.torres@example.com', 'Calle Secundaria 789', '321321321'),
('Pedro Martínez', '7778889999', 'pedro.martinez@example.com', 'Avenida Libertad 101', '456456456'),
('Sofía Ramírez', '2223334444', 'sofia.ramirez@example.com', 'Calle del Sol 202', '654654654'),
('Luis Herrera', '3334445555', 'luis.herrera@example.com', 'Calle del Agua 303', '789789789'),
('Julia Castro', '8889990000', 'julia.castro@example.com', 'Avenida del Mar 404', '147258369'),
('Fernando Díaz', '6667778888', 'fernando.diaz@example.com', 'Calle de la Luna 505', '963852741'),
('Elena Sánchez', '5556667777', 'elena.sanchez@example.com', 'Avenida de las Flores 606', '123789456'),
('Marco Polo', '9990001111', 'marco.polo@example.com', 'Calle de los Cerezos 707', '321654987'),
('Claudia Gómez', '4445551111', 'claudia.gomez@example.com', 'Avenida de los Olivos 808', '789123456'),
('Arturo Vega', '8887776666', 'arturo.vega@example.com', 'Calle de los Tilos 909', '654789321'),
('Patricia Ruiz', '7776665555', 'patricia.ruiz@example.com', 'Avenida del Viento 1000', '852963741'),
('Diego Rojas', '1112220000', 'diego.rojas@example.com', 'Calle de la Esperanza 1101', '951753852');

-- Tabla EMPRESAS
INSERT INTO EMPRESAS (NOMBRE, TELEFONO, EMAIL, DIRECCION) VALUES
('Empresa Uno', '1234567890', 'empresa.uno@example.com', 'Calle Industrial 1'),
('Empresa Dos', '0987654321', 'empresa.dos@example.com', 'Avenida Central 2'),
('Empresa Tres', '1112223333', 'empresa.tres@example.com', 'Calle Comercio 3'),
('Empresa Cuatro', '4445556666', 'empresa.cuatro@example.com', 'Avenida de la Innovación 4'),
('Empresa Cinco', '7778889999', 'empresa.cinco@example.com', 'Calle de los Negocios 5'),
('Empresa Seis', '2223334444', 'empresa.seis@example.com', 'Avenida del Progreso 6'),
('Empresa Siete', '3334445555', 'empresa.siete@example.com', 'Calle de la Tecnología 7'),
('Empresa Ocho', '8889990000', 'empresa.ocho@example.com', 'Avenida de la Creatividad 8'),
('Empresa Nueve', '6667778888', 'empresa.nueve@example.com', 'Calle de la Visión 9'),
('Empresa Diez', '5556667777', 'empresa.diez@example.com', 'Avenida de los Sueños 10'),
('Empresa Once', '9990001111', 'empresa.once@example.com', 'Calle del Futuro 11'),
('Empresa Doce', '4445551111', 'empresa.doce@example.com', 'Avenida de la Energía 12'),
('Empresa Trece', '8887776666', 'empresa.trece@example.com', 'Calle de la Esperanza 13'),
('Empresa Catorce', '7776665555', 'empresa.catorce@example.com', 'Avenida de la Sabiduría 14'),
('Empresa Quince', '1112220000', 'empresa.quince@example.com', 'Calle de la Ilusión 15');

--Tabla EMPLEADO
INSERT INTO EMPLEADO (NOMBRE, TELEFONO, EMAIL, ID_TIPODESERVICIO, DISPONIBILIDAD, CALIFICACION) VALUES
('Javier Salazar', '1234567890', 'javier.salazar@example.com', 1, TRUE, 4),
('Liliana Castro', '0987654321', 'liliana.castro@example.com', 2, TRUE, 5),
('Marco Antonio', '1112223333', 'marco.antonio@example.com', 3, TRUE, 3),
('Sandra Pérez', '4445556666', 'sandra.perez@example.com', 4, TRUE, 4),
('Ricardo Gómez', '7778889999', 'ricardo.gomez@example.com', 5, TRUE, 5),
('Clara González', '2223334444', 'clara.gonzalez@example.com', 6, FALSE, 2),
('Pablo Vargas', '3334445555', 'pablo.vargas@example.com', 7, TRUE, 4),
('Estela Ruiz', '8889990000', 'estela.ruiz@example.com', 8, TRUE, 5),
('César López', '6667778888', 'cesar.lopez@example.com', 9, FALSE, 1),
('Silvia Romero', '5556667777', 'silvia.romero@example.com', 10, TRUE, 4),
('Martín Delgado', '9990001111', 'martin.delgado@example.com', 1, TRUE, 5),
('Fabiola Torres', '4445551111', 'fabiola.torres@example.com', 2, TRUE, 3),
('Arturo Medina', '8887776666', 'arturo.medina@example.com', 3, TRUE, 4),
('Verónica Jiménez', '7776665555', 'veronica.jimenez@example.com', 4, TRUE, 5),
('Nicolás Herrera', '1112220000', 'nicolas.herrera@example.com', 5, FALSE, 2),
('Laura Castillo', '1233211234', 'laura.castillo@example.com', 6, TRUE, 4),
('Alberto Méndez', '9876543210', 'alberto.mendez@example.com', 7, TRUE, 3),
('Gabriela Ortiz', '4567891230', 'gabriela.ortiz@example.com', 8, TRUE, 5),
('Hugo Gómez', '3216549870', 'hugo.gomez@example.com', 9, FALSE, 1),
('Mónica Suárez', '6549873210', 'monica.suarez@example.com', 10, TRUE, 4);

--Tabla TIPODESERVICIO
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

--Tabla MEDIODEPAGO
INSERT INTO MEDIODEPAGO (EFECTIVO, TARJETA, BILLETERA_VIRTUAL, ACREDITADO) VALUES
(1, 0, 0, FALSE),
(0, 1, 0, TRUE),
(0, 0, 1, TRUE),
(1, 1, 0, FALSE),
(0, 1, 1, TRUE),
(1, 0, 1, TRUE),
(1, 1, 1, FALSE),
(0, 0, 0, FALSE),
(1, 0, 0, TRUE),
(0, 1, 0, FALSE),
(1, 1, 0, TRUE),
(0, 0, 1, FALSE),
(1, 0, 1, TRUE),
(0, 1, 1, FALSE),
(1, 1, 1, TRUE);

--Tabla SOLICITUD
INSERT INTO SOLICITUD (ID_CLIENTE, ID_TIPODESERVICIO, ID_EMPLEADOS, FECHA, ID_MEDIO_DE_PAGO) VALUES
(1, 1, 1, '2024-07-30 10:00:00', 1),
(2, 2, 2, '2024-07-30 11:00:00', 2),
(3, 3, 3, '2024-07-30 12:00:00', 3),
(4, 4, 4, '2024-07-30 13:00:00', 1),
(5, 5, 5, '2024-07-30 14:00:00', 2),
(6, 6, 6, '2024-07-30 15:00:00', 3),
(7, 7, 7, '2024-07-30 16:00:00', 1),
(8, 8, 8, '2024-07-30 17:00:00', 2),
(9, 9, 9, '2024-07-30 18:00:00', 3),
(10, 1, 10, '2024-07-30 19:00:00', 1),
(11, 2, 11, '2024-07-30 20:00:00', 2),
(12, 3, 12, '2024-07-30 21:00:00', 3),
(13, 4, 13, '2024-07-30 22:00:00', 1),
(14, 5, 14, '2024-07-30 23:00:00', 2),
(15, 6, 15, '2024-07-30 24:00:00', 3);

-- Tabla FACTURAS
INSERT INTO FACTURAS (ID_SOLICITUD, FECHA, TOTAL, ESTADO, ID_MEDIO_DE_PAGO) VALUES
(1, '2024-07-30 10:30:00', 100.00, 'Pagada', 1),
(2, '2024-07-30 11:30:00', 200.00, 'Pendiente', 2),
(3, '2024-07-30 12:30:00', 150.00, 'Pagada', 3),
(4, '2024-07-30 13:30:00', 250.00, 'Pendiente', 1),
(5, '2024-07-30 14:30:00', 300.00, 'Pagada', 2),
(6, '2024-07-30 15:30:00', 400.00, 'Pendiente', 3),
(7, '2024-07-30 16:30:00', 350.00, 'Pagada', 1),
(8, '2024-07-30 17:30:00', 450.00, 'Pendiente', 2),
(9, '2024-07-30 18:30:00', 500.00, 'Pagada', 3),
(10, '2024-07-30 19:30:00', 600.00, 'Pendiente', 1),
(11, '2024-07-30 20:30:00', 700.00, 'Pagada', 2),
(12, '2024-07-30 21:30:00', 800.00, 'Pendiente', 3),
(13, '2024-07-30 22:30:00', 900.00, 'Pagada', 1),
(14, '2024-07-30 23:30:00', 1000.00, 'Pendiente', 2),
(15, '2024-07-30 24:30:00', 1100.00, 'Pagada', 3);




