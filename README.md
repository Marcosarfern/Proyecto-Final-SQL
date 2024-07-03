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










