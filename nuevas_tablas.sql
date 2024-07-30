-- Tabla de Notificaciones
--Para enviar notificaciones a clientes y empleados sobre servicios, promociones, etc.
CREATE TABLE NOTIFICACIONES (
    ID_NOTIFICACION INT PRIMARY KEY AUTO_INCREMENT,
    ID_CLIENTE INT,
    ID_EMPLEADO INT,
    MENSAJE TEXT,
    FECHA DATETIME,
    LEIDO BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
    FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADO(ID_EMPLEADO)
);

--Tabla de Facturas
--Para gestionar la facturación de los servicios prestados a los clientes.
CREATE TABLE FACTURAS (
    ID_FACTURA INT PRIMARY KEY AUTO_INCREMENT,
    ID_SOLICITUD INT,
    FECHA_FACTURA DATETIME,
    TOTAL DECIMAL(10, 2),
    PAGADO BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (ID_SOLICITUD) REFERENCES SOLICITUD(ID_SOLICITUD)
);

--Tabla de Tiempos de Servicio
--Para registrar los tiempos estimados y reales de realización de los servicios.
CREATE TABLE TIEMPOS_SERVICIO (
    ID_TIEMPO INT PRIMARY KEY AUTO_INCREMENT,
    ID_SOLICITUD INT,
    TIEMPO_ESTIMADO INT, -- en minutos
    TIEMPO_REAL INT,     -- en minutos
    FOREIGN KEY (ID_SOLICITUD) REFERENCES SOLICITUD(ID_SOLICITUD)
);

--Tabla de Comentarios/Reseñas
--Para permitir a los clientes dejar comentarios y calificaciones sobre los servicios prestados.
CREATE TABLE COMENTARIOS (
    ID_COMENTARIO INT PRIMARY KEY AUTO_INCREMENT,
    ID_SOLICITUD INT,
    ID_CLIENTE INT,
    CALIFICACION INT CHECK (CALIFICACION BETWEEN 1 AND 5),
    COMENTARIO TEXT,
    FECHA DATETIME,
    FOREIGN KEY (ID_SOLICITUD) REFERENCES SOLICITUD(ID_SOLICITUD),
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE)
);


-- Relaciones de las Nuevas Tablas
-- Tabla de Comentarios/Reseñas
ALTER TABLE COMENTARIOS
ADD CONSTRAINT FK_COMENTARIOS_SOLICITUD
FOREIGN KEY (ID_SOLICITUD) REFERENCES SOLICITUD(ID_SOLICITUD);

ALTER TABLE COMENTARIOS
ADD CONSTRAINT FK_COMENTARIOS_CLIENTE
FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE);

--Tabla de Notificaciones
ALTER TABLE NOTIFICACIONES
ADD CONSTRAINT FK_NOTIFICACIONES_CLIENTE
FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE);

ALTER TABLE NOTIFICACIONES
ADD CONSTRAINT FK_NOTIFICACIONES_EMPLEADO
FOREIGN KEY (ID_EMPLEADO) REFERENCES EMPLEADO(ID_EMPLEADO);


--Tabla de Tiempos de Servicio
ALTER TABLE TIEMPOS_SERVICIO
ADD CONSTRAINT FK_TIEMPOS_SERVICIO_SOLICITUD
FOREIGN KEY (ID_SOLICITUD) REFERENCES SOLICITUD(ID_SOLICITUD);

--Tabla de Facturas
ALTER TABLE FACTURAS
ADD CONSTRAINT FK_FACTURAS_SOLICITUD
FOREIGN KEY (ID_SOLICITUD) REFERENCES SOLICITUD(ID_SOLICITUD);


-- INPUT DE REGISTROS DE ESTAS TABLAS
--Tabla COMENTARIOS
INSERT INTO COMENTARIOS (ID_SOLICITUD, ID_CLIENTE, CALIFICACION, COMENTARIO, FECHA) VALUES
(1, 1, 5, 'Excelente servicio, muy puntual.', '2024-07-30 11:00:00'),
(2, 2, 4, 'Muy bien, pero podría mejorar la atención al cliente.', '2024-07-30 12:00:00'),
(3, 3, 3, 'El servicio fue bueno, aunque tardaron un poco.', '2024-07-30 13:00:00'),
(4, 4, 5, 'Muy satisfecho, volveré a contratar.', '2024-07-30 14:00:00'),
(5, 5, 2, 'El trabajo no cumplió con mis expectativas.', '2024-07-30 15:00:00'),
(6, 6, 4, 'Buen servicio, aunque el costo fue elevado.', '2024-07-30 16:00:00'),
(7, 7, 5, 'Gran profesionalismo y dedicación.', '2024-07-30 17:00:00'),
(8, 8, 4, 'El servicio fue rápido y efectivo.', '2024-07-30 18:00:00'),
(9, 9, 5, 'Recomiendo mucho este servicio, excelente calidad.', '2024-07-30 19:00:00'),
(10, 10, 3, 'Podrían mejorar la comunicación.', '2024-07-30 20:00:00'),
(11, 11, 5, 'Todo perfecto, muchas gracias.', '2024-07-30 21:00:00'),
(12, 12, 4, 'El servicio cumplió con lo prometido.', '2024-07-30 22:00:00'),
(13, 13, 5, 'Excelente atención y resultado final.', '2024-07-30 23:00:00'),
(14, 14, 3, 'Estuvo bien, pero el tiempo de espera fue largo.', '2024-07-30 24:00:00'),
(15, 15, 4, 'Buen servicio, aunque me gustaría ver más opciones.', '2024-07-30 25:00:00');


--Tabla NOTIFICACIONES
INSERT INTO NOTIFICACIONES (ID_CLIENTE, ID_EMPLEADO, MENSAJE, FECHA, LEIDO) VALUES
INSERT INTO NOTIFICACIONES (ID_CLIENTE, ID_EMPLEADO, MENSAJE, FECHA, LEIDO) VALUES
(1, 1, 'Tu solicitud ha sido confirmada.', '2024-07-30 10:00:00', FALSE),
(2, 2, 'Recuerda que tu servicio está programado para mañana.', '2024-07-30 11:00:00', FALSE),
(3, 3, 'Tu factura ha sido emitida.', '2024-07-30 12:00:00', FALSE),
(4, 1, 'Gracias por elegir nuestros servicios.', '2024-07-30 13:00:00', FALSE),
(5, 2, 'Tienes un nuevo comentario en tu solicitud.', '2024-07-30 14:00:00', FALSE),
(6, 3, 'Se ha actualizado el estado de tu solicitud.', '2024-07-30 15:00:00', FALSE),
(7, 4, 'Recuerda que tienes un descuento disponible.', '2024-07-30 16:00:00', FALSE),
(8, 5, 'Has sido asignado a un nuevo servicio.', '2024-07-30 17:00:00', FALSE),
(9, 6, 'La promoción del mes está a punto de terminar.', '2024-07-30 18:00:00', FALSE),
(10, 7, 'Recuerda calificar el servicio que recibiste.', '2024-07-30 19:00:00', FALSE),
(11, 8, 'Se ha realizado un cambio en tu programación.', '2024-07-30 20:00:00', FALSE),
(12, 9, 'Tu solicitud ha sido cerrada.', '2024-07-30 21:00:00', FALSE),
(13, 10, 'Tienes un nuevo mensaje de atención al cliente.', '2024-07-30 22:00:00', FALSE),
(14, 11, 'Gracias por dejar tu comentario.', '2024-07-30 23:00:00', FALSE),
(15, 12, 'Recuerda que puedes acceder a tu historial de servicios.', '2024-07-30 24:00:00', FALSE);


-- Tabla TIEMPOS_SERVICIO
INSERT INTO TIEMPOS_SERVICIO (ID_SOLICITUD, TIEMPO_ESTIMADO, TIEMPO_REAL) VALUES
(1, 60, 55),
(2, 120, 130),
(3, 90, 85),
(4, 30, 25),
(5, 300, 320),
(6, 45, 50),
(7, 60, 60),
(8, 150, 140),
(9, 90, 100),
(10, 120, 110),
(11, 180, 175),
(12, 240, 230),
(13, 150, 155),
(14, 200, 190),
(15, 300, 310);

--Tabla FACTURAS
INSERT INTO FACTURAS (ID_SOLICITUD, FECHA_FACTURA, TOTAL, ESTADO, METODO_PAGO) VALUES
(1, '2024-07-30 10:00:00', 50.00, 'Pagado', 'Efectivo'),
(2, '2024-07-30 11:00:00', 120.00, 'Pagado', 'Tarjeta'),
(3, '2024-07-30 12:00:00', 80.00, 'Pendiente', 'Billetera Virtual'),
(4, '2024-07-30 13:00:00', 30.00, 'Pagado', 'Efectivo'),
(5, '2024-07-30 14:00:00', 500.00, 'Pagado', 'Tarjeta'),
(6, '2024-07-30 15:00:00', 60.00, 'Pendiente', 'Billetera Virtual'),
(7, '2024-07-30 16:00:00', 40.00, 'Pagado', 'Efectivo'),
(8, '2024-07-30 17:00:00', 200.00, 'Pagado', 'Tarjeta'),
(9, '2024-07-30 18:00:00', 100.00, 'Pendiente', 'Billetera Virtual'),
(10, '2024-07-30 19:00:00', 150.00, 'Pagado', 'Efectivo'),
(11, '2024-07-30 20:00:00', 300.00, 'Pagado', 'Tarjeta'),
(12, '2024-07-30 21:00:00', 250.00, 'Pendiente', 'Billetera Virtual'),
(13, '2024-07-30 22:00:00', 400.00, 'Pagado', 'Efectivo'),
(14, '2024-07-30 23:00:00', 350.00, 'Pagado', 'Tarjeta'),
(15, '2024-07-30 24:00:00', 200.00, 'Pendiente', 'Billetera Virtual'),
(16, '2024-07-30 10:30:00', 75.00, 'Pagado', 'Efectivo'),
(17, '2024-07-30 11:30:00', 95.00, 'Pagado', 'Tarjeta'),
(18, '2024-07-30 12:30:00', 110.00, 'Pendiente', 'Billetera Virtual'),
(19, '2024-07-30 13:30:00', 65.00, 'Pagado', 'Efectivo'),
(20, '2024-07-30 14:30:00', 180.00, 'Pagado', 'Tarjeta');











