# Proyecto-Final-SQL
*Proyecto Final comisión 57190*

## PROBLEMA:
**APP DE SERVICIOS**
Una empresa destinada a la prestación de diferentes servicios de mantenimiento terciarizados necesita la creación de una base de datos para su aplicación movil desde la cual
tanto clientes particulares como empresas podrán solicitar profecionales acordes a las necesidades que tengan.

## Descripción del problema
**1. Gestión de solicitudes:** Se necesita una base de datos que contenga las solicitudes creadadas por el cliente, el tipo de servicio solicitado y el o los empleados destinados a esta solicitud.
**2. Tipos de servicios:** es necesario identificar si son clientes particulares o empresas y la posibilidad de identificar la urgencia de las solicitudes.
**3. Registro de solicitudes:** necesitamos la manera de registrar los pedidos realizados por parte de los clientes, tanto fecha, profesional que se envió, tiempo de gestión y si se solucionó o no el problema.
**4. Gestión de empleados por especialidad:** la base debe poder permitir visualisar los empleados que se envían en las solicitudes de los usuarios, su calificación, velocidad de respuesta, solución de la problemática y disponibilidad de los empleados (si se encuentran activos o no, así como también si se encuentran ocupados o libres)

## Objetivo
Diesñar una base de datos relacional que permita gestionar los datos de esta app de servicios. La base debe ser funcional, escalable y rápida, para una sencilla obtención de los datos obtenidos de las operaciones dentro de la aplicación.


# Descripción de la base de datos
La base de datos se genera para la gestión de solicitudes de servicios dentro de una aplicación. Tambien contiene la información de clientes, empleados y servicios que presta. Las tablas que la componen son:

**1. CLIENTE**
   - Esta tabla intermedia contiene la información de los clientes que realizan solicitudes particulares y empresas
   - Atributos: ID_CLIENTE, ID_PARTICULARES, ID_EMPRESA

**2. PARTICULARES**
   - Almacena información de los clientes particulares
   - Atributos: ID_PARTICULARES, NOMBRE, TELEFONO, DIRECCION, EMAIL

**3. EMPRESAS**
   - Almacena información de las empresas que solicitan servicios
   - Atributos: ID_EMPRESA; NOMBRE, RAZON_SOCIAL, TELEFONO, EMAIL, DIRECCION
     
**4. EMPLEADOS**
   - Contiene la información de los empleados
   - Atributos: ID_EMPLEADO, NOMBRE, TELEFONO, EMAIL, ESPECIALIDAD, DISPONIBILIDAD, CALIFICACION
     
**5. TIPO DE SERVICIO**
   - Esta tabla contiene los servicios disponibles 
   - Atributos: ID_TIPO_DE_SERVICIO, GASISTA, PLOMERIA, ELECTRICIDAD, SISTEMAS
     
**6. SOLICITUDES**
   - Almacena toda la información de los pedidos que realizan los clientes, el o los empleados enviados y el tipo de servicio solicitado
   - Atributos: ID_SOLICITUD, FECHA, ID_EMPLEADO, ID_CLIENTE, ID_TIPO_DE_SERVICIO, ID_MEDIO_DE_PAGO
     
**7. MEDIO DE PAGO**
   - Esta tabla almacena el metodo de pago seleccionado para abonar el servicio prestado
   - Atributos: ID_MEDIO_DE_PAGO, EFECTIVO, TARJETA, BILLETERA_VIRTUAL, ACREDITADO

# Problemática resuelta
Mediante esta base se permite gestionar los procesos de solicitudes de servicios, conteniendo datos tanto de clientes y empleados, la disponibilidad de estos ultimos, su calificación en base al servicio prestado y el registro de las solicitudes.

**Algunos de los datos más relevantes que podemos obtener son:**
* Registro de clientes y empleados involucrados en cada solicitud
* Disponibilidad de los empleados para cada solicitud
* El registro detallado de cada operación, fecha, tipo de servicio, empleado, cliente, calificación del servicio y forma de pago.


# DER SIMPLIFICADO

``

+------------------------+        +------------------------+         +------------------+         +------------------+ 
| TIPODESERVICIO         |        |       SOLICITUD        |         |     CLIENTE      |         |   PARTICULARES   |
+------------------------+        +------------------------+         +------------------+         +------------------+
| id_tipodeservicio (PK) |<>-----o| id_Solicitud (PK)      |o------- | id_Cliente(PK)   | ------> | id_Particulares  |
|                        |        | id_Cliente (FK)        |         | id_Particulares  |         | nombre           |
|                        |        | id_Empleado (FK)       |         | id_Empresas      |         | telefono         |
|                        |        | id_Tipodeservicio (FK) |         |                  |         | email            |
+------------------------+        | id_Mediodepago (FK)    |         +------------------+         | documento        |
                                  |                        |                   |                  | direccion        |
                 _ _ _ _ _ _ _ <> |                        |                   |                  +------------------+
                |                 +------------------------+                   |
                |                        |                                     |
                |                        |                                     |
                o                        v                                     v
+----------------------+        +--------------------+             +-------------------+
|     EMPLEADOS        |        |    MEDIODEPAGO     |             |     EMPRESAS      |
+----------------------+        +--------------------+             +-------------------+
| idEmpleado (PK)      |        | id_mediodepago (PK)|             | id_Empresas (PK)  |
| nombre               |        | efectivo(FK)       |             | nombre            |
| telefono             |        | tajeta             |             | razon_social      |
| email                |        | billeteravirtual   |             | telefono          |
| id_tipodeservicio(FK)|        | acreditado         |             | direccion         |
+----------------------+        +--------------------+             +-------------------+                                     
``


**##Creación de nuevas tablas**
A continuacion se detallan la nuevas tablas creadas para enriquecer esta base de datos

**1. NOTIFICACIONES**
   - Esta tabla sirve para enviar notificaciones a clientes y empleados sobre servicios, promociones, etc.
   - Atributos: ID_NOTIFICACION, ID_CLIENTE, ID_EMPRESA, MENSAJE, FECHA, LEIDO

**2. FACTURAS**
   - Para gestionar la facturación de los servicios prestados a los clientes.
   - Atributos: ID_FACTURA, ID_SOLICITUD, FECHA_FACTURA, TOTAL, PAGADO

**3. TIEMPOS_SERVICIO**
   - Se utiliza para registrar los tiempos estimados y reales de realización de los servicios.
   - Atributos: ID_TIEMPO; ID_SOLICITUD, TIEMPO_ESTIMADO, TIEMPO_REAL
     
**4. COMENTARIOS**
   - Esta tabla permite a los clientes dejar comentarios y calificaciones sobre los servicios prestados.
   - Atributos: ID_COMENTARIO, ID_SOLICITUD, ID_CLIENTE, CALIFICACION, COMENTARIO, FECHA

```
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
FOREIGN KEY (ID_SOLICITUD) REFERENCES SOLICITUD(ID_SOLICITU
```

**##Creación de vistas**
Se crea una vista para poder visualizar la cantidad de medios de pagos utilizados en las solicitudes de servicios.

```
CREATE VIEW VISTA_CANTIDAD_MEDIOS_PAGO AS
SELECT 
    m.ID_MEDIO_DE_PAGO,
    CASE
        WHEN m.EFECTIVO IS NOT NULL THEN 'Efectivo'
        WHEN m.TARJETA IS NOT NULL THEN 'Tarjeta'
        WHEN m.BILLETERA_VIRTUAL IS NOT NULL THEN 'Billetera Virtual'
    END AS TIPO_MEDIO_PAGO,
    COUNT(s.ID_SOLICITUD) AS CANTIDAD_USOS
FROM 
    MEDIODEPAGO m
LEFT JOIN 
    SOLICITUD s ON m.ID_MEDIO_DE_PAGO = s.ID_MEDIO_DE_PAGO
GROUP BY 
    m.ID_MEDIO_DE_PAGO, TIPO_MEDIO_PAGO;
```

**Cómo utilizar esta vista**
```
SELECT * FROM VISTA_CANTIDAD_MEDIOS_PAGO;
```

**##Inserciones en tablas**
Se generaron más de 15 registros para cada tabla los cuales fueron agregados mediante Insert Into dentro del codigo. La insersión mediante csv la estoy generando para la entrega final.

```
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
```

**##Funciones**
Se creo una función para calcular el total de ventas. Esta función devuelve el total de ventas acumuladas en un período específico, poniendo las fechas de inicio y fin del periodo que queremos obtener nos dará como resultado las ventas realizadas entre estas fechas.

```
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
```


##Como usar esta función (se pone entre parentesis el perido del cual se quiere obtener el dato, como en el ejemplo citado abajo)
```
SELECT TotalVentasPorFecha('2024-01-01', '2024-01-31') AS TotalVentasEnero;
```


**##Triggers**
Se crea un trigger con el objetivo de insertar automáticamente una entrada en la tabla de malas calificaciones cuando un cliente deja una calificación baja. 

```
DELIMITER //

CREATE TRIGGER after_insert_comentario
AFTER INSERT ON COMENTARIOS
FOR EACH ROW
BEGIN
    IF NEW.CALIFICACION < 3 THEN
        INSERT INTO MALAS_CALIFICACIONES (ID_COMENTARIO, ID_CLIENTE, CALIFICACION, FECHA, MOTIVO)
        VALUES (NEW.ID_COMENTARIO, NEW.ID_CLIENTE, NEW.CALIFICACION, NOW(), 'Registro de calificación baja automático');
    END IF;
END //

DELIMITER ;
```

##Para poder probar este trigger podemos insertar un nuevo comentario en la tabla COMENTARIOS de la siguiente manera:
```
INSERT INTO COMENTARIOS (ID_SOLICITUD, ID_CLIENTE, CALIFICACION, COMENTARIO, FECHA)
VALUES (1, 1, 2, 'El servicio fue muy deficiente.', NOW());
```

##Y finalmente corroboramos dentro de la tabla MALAS CALIFICACIONES si fue agregado correctamente:
```
SELECT * FROM MALAS_CALIFICACIONES;
```

**##Stored Procedure**
Este stored procedure se crea para poder inserta un nuevo tipo de servicio en la tabla TIPODESERVICIO en caso de que la empresa decida abarcar nuevos servicios dentro de su aplicación:

DELIMITER //

```
CREATE PROCEDURE AgregarTipoDeServicio(
    IN tipo_servicio VARCHAR(50)
)
BEGIN
    INSERT INTO TIPODESERVICIO (TIPO) VALUES (tipo_servicio);
END //

DELIMITER ;
```

**Un ejemplo de como utilizar este stored procedure es el siguiente:**
```
CALL AgregarTipoDeServicio('Servicio Nuevo');
```
**Para poder verificar la inserción del nuevo servicio:**
```
SELECT * FROM TIPODESERVICIO;
```
