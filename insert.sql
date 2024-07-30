-- INSERT

INSERT INTO PARTICULARES (NOMBRE, TELEFONO, EMAIL, DIRECCION, DOCUMENTO) VALUES
('Juan Pérez', '1234567890', 'juan.perez@example.com', 'Calle Falsa 123', '123456789'),
('María López', '0987654321', 'maria.lopez@example.com', 'Avenida Siempre Viva 742', '987654321'),
('Carlos Gómez', '1122334455', 'carlos.gomez@example.com', 'Boulevard de los Sueños 456', '456789123'),
('Ana Torres', '2233445566', 'ana.torres@example.com', 'Calle de la Paz 10', '112233445'),
('Luis Ramírez', '3344556677', 'luis.ramirez@example.com', 'Calle del Sol 20', '223344556'),
('Laura Jiménez', '4455667788', 'laura.jimenez@example.com', 'Calle del Norte 30', '334455667'),
('Diego Morales', '5566778899', 'diego.morales@example.com', 'Calle del Este 40', '445566778'),
('Isabel Ruiz', '6677889900', 'isabel.ruiz@example.com', 'Calle del Sur 50', '556677889'),
('José Martínez', '7788990011', 'jose.martinez@example.com', 'Calle de la Libertad 60', '667788990'),
('Sofía Hernández', '8899001122', 'sofia.hernandez@example.com', 'Calle de la Esperanza 70', '778899001'),
('Fernando Castillo', '9900112233', 'fernando.castillo@example.com', 'Calle del Desarrollo 80', '889900112'),
('Valentina Fernández', '1010101010', 'valentina.fernandez@example.com', 'Calle de la Innovación 90', '990011223'),
('Martín García', '1111111111', 'martin.garcia@example.com', 'Calle de la Creatividad 100', '101010101'),
('Natalia Vargas', '1212121212', 'natalia.vargas@example.com', 'Calle del Trabajo 110', '111111111'),
('Javier Salazar', '1313131313', 'javier.salazar@example.com', 'Calle de la Unidad 120', '121212121');


INSERT INTO EMPRESAS (NOMBRE, TELEFONO, EMAIL, DIRECCION) VALUES
('Empresa Uno', '123123123', 'contacto@empresau.no', 'Calle de la Industria 1'),
('Empresa Dos', '456456456', 'info@empresados.com', 'Avenida de las Empresas 2'),
('Empresa Tres', '789789789', 'soporte@empresatres.com', 'Paseo de las Innovaciones 3'),
('Empresa Cuatro', '321321321', 'contacto@empresacuatro.com', 'Calle de la Tecnología 4'),
('Empresa Cinco', '654654654', 'info@empresacinco.com', 'Avenida del Futuro 5'),
('Empresa Seis', '987987987', 'soporte@empresaseis.com', 'Boulevard de los Avances 6'),
('Empresa Siete', '135135135', 'contacto@empresasiete.com', 'Calle del Éxito 7'),
('Empresa Ocho', '246246246', 'info@empresa-ocho.com', 'Avenida del Progreso 8'),
('Empresa Nueve', '357357357', 'soporte@empresanueve.com', 'Calle de las Soluciones 9'),
('Empresa Diez', '468468468', 'contacto@empresadiez.com', 'Calle de los Proyectos 10'),
('Empresa Once', '579579579', 'info@empresaonce.com', 'Calle de la Innovación 11'),
('Empresa Doce', '680680680', 'soporte@empresados.com', 'Avenida de la Creatividad 12'),
('Empresa Trece', '791791791', 'contacto@empresatres.com', 'Calle de la Inspiración 13'),
('Empresa Catorce', '802802802', 'info@empresacatorce.com', 'Boulevard de la Eficiencia 14'),
('Empresa Quince', '913913913', 'soporte@empresaquince.com', 'Calle del Crecimiento 15');

INSERT INTO CLIENTE (ID_PARTICULARES, ID_EMPRESAS) VALUES
(1, NULL),  -- Juan Pérez como cliente particular
(NULL, 1),  -- Empresa Uno como cliente
(2, NULL),  -- María López como cliente particular
(3, NULL),  -- Carlos Gómez como cliente particular
(4, NULL),  -- Ana Torres como cliente particular
(NULL, 2),  -- Empresa Dos como cliente
(5, NULL),  -- Luis Ramírez como cliente particular
(6, NULL),  -- Laura Jiménez como cliente particular
(NULL, 3),  -- Empresa Tres como cliente
(7, NULL),  -- Diego Morales como cliente particular
(8, NULL),  -- Isabel Ruiz como cliente particular
(NULL, 4),  -- Empresa Cuatro como cliente
(9, NULL),  -- José Martínez como cliente particular
(NULL, 5),  -- Empresa Cinco como cliente
(10, NULL), -- Sofía Hernández como cliente particular
(NULL, 6);  -- Empresa Seis como cliente

INSERT INTO TIPODESERVICIO (TIPO) VALUES
('Limpieza'),
('Mantenimiento'),
('Reparación'),
('Transporte'),
('Construcción'),
('Jardinería'),
('Plomería'),
('Electricidad'),
('Pintura'),
('Climatización'),
('Seguridad'),
('Consultoría'),
('Diseño'),
('Desarrollo'),
('Marketing');

INSERT INTO EMPLEADO (NOMBRE, TELEFONO, EMAIL, ID_TIPODESERVICIO, DISPONIBILIDAD, CALIFICACION) VALUES
('Pedro Sánchez', '3213213210', 'pedro.sanchez@ejemplo.com', 1, TRUE, 4),
('Lucía Martínez', '6546546540', 'lucia.martinez@ejemplo.com', 2, TRUE, 5),
('Andrés Rodríguez', '9879879870', 'andres.rodriguez@ejemplo.com', 3, FALSE, 3),
('Sandra Gómez', '1231231234', 'sandra.gomez@ejemplo.com', 4, TRUE, 4),
('Rafael Torres', '2342342345', 'rafael.torres@ejemplo.com', 5, TRUE, 5),
('Clara Jiménez', '3453453456', 'clara.jimenez@ejemplo.com', 6, FALSE, 4),
('Miguel Ángel', '4564564567', 'miguel.angel@ejemplo.com', 7, TRUE, 3),
('Patricia Ruiz', '5675675678', 'patricia.ruiz@ejemplo.com', 8, TRUE, 5),
('Fernando Díaz', '6786786789', 'fernando.diaz@ejemplo.com', 9, TRUE, 4),
('Elena Hernández', '7897897890', 'elena.hernandez@ejemplo.com', 10, FALSE, 3),
('Jorge Castro', '8908908901', 'jorge.castro@ejemplo.com', 11, TRUE, 4),
('Silvia Romero', '9019019012', 'silvia.romero@ejemplo.com', 12, TRUE, 5),
('Oscar Morales', '0120120123', 'oscar.morales@ejemplo.com', 13, FALSE, 4),
('Raquel Silva', '1231231230', 'raquel.silva@ejemplo.com', 14, TRUE, 5),
('Martín Salas', '2342342341', 'martin.salas@ejemplo.com', 15, TRUE, 3);


INSERT INTO MEDIODEPAGO (EFECTIVO, TARJETA, BILLETERA_VIRTUAL, ACREDITADO) VALUES
(1, 0, 0, FALSE),  -- Pago en efectivo
(0, 1, 0, TRUE),   -- Pago con tarjeta
(0, 0, 1, TRUE),   -- Pago con billetera virtual
(1, 0, 0, TRUE),   -- Pago en efectivo (acreditado)
(0, 1, 0, FALSE),  -- Pago con tarjeta (no acreditado)
(0, 0, 1, FALSE),  -- Pago con billetera virtual (no acreditado)
(1, 0, 0

INSERT INTO SOLICITUD (ID_CLIENTE, ID_TIPODESERVICIO, ID_EMPLEADOS, FECHA, ID_MEDIO_DE_PAGO) VALUES
(1, 1, 1, '2024-07-30 10:00:00', 1),  -- Juan Pérez solicita un servicio de limpieza y paga en efectivo
(2, 2, 2, '2024-07-30 11:00:00', 2),  -- Empresa Uno solicita mantenimiento y paga con tarjeta
(3, 3, 3, '2024-07-30 12:00:00', 3),  -- Carlos Gómez solicita reparación y paga con billetera virtual
(4, 4, 4, '2024-07-30 13:00:00', 1),  -- Ana Torres solicita transporte y paga en efectivo
(5, 5, 5, '2024-07-30 14:00:00', 2),  -- Luis Ramírez solicita construcción y paga con tarjeta
(6, 6, 6, '2024-07-30 15:00:00', 3),  -- Laura Jiménez solicita jardinería y paga con billetera virtual
(7, 7, 7, '2024-07-30 16:00:00', 1),  -- Diego Morales solicita plomería y paga en efectivo
(8, 8, 8, '2024-07-30 17:00:00', 2),  -- Isabel Ruiz solicita electricidad y paga con tarjeta
(9, 9, 9, '2024-07-30 18:00:00', 3),  -- José Martínez solicita pintura y paga con billetera virtual
(10, 10, 10, '2024-07-30 19:00:00', 1),-- Sofía Hernández solicita climatización y paga en efectivo
(11, 11, 11, '2024-07-30 20:00:00', 2),-- Fernando Castillo solicita seguridad y paga con tarjeta
(12, 12, 12, '2024-07-30 21:00:00', 3),-- Valentina Fernández solicita consultoría y paga con billetera virtual
(13, 13, 13, '2024-07-30 22:00:00', 1),-- Martín García solicita diseño y paga en efectivo
(14, 14, 14, '2024-07-30 23:00:00', 2),-- Natalia Vargas solicita desarrollo y paga con tarjeta
(15, 15, 15, '2024-07-30 24:00:00', 3);-- Javier Salazar solicita marketing y paga con billetera virtual
