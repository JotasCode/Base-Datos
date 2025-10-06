CREATE DATABASE dapiato IF NOT EXISTS;

USE dapiato;

CREATE TABLE pacientes (
    id VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    doctor VARCHAR(255) NOT NULL,
    caso_especial VARCHAR(50),
    fecha_registro TIMESTAMP WITH TIME ZONE NOT NULL,
    fecha_atencion TIMESTAMP WITH TIME ZONE
);

INSERT INTO pacientes 
(
    id, 
    nombre, 
    doctor, 
    caso_especial, 
    fecha_registro, 
    fecha_atencion
) 
VALUES
(
    'TICKET-2022', 
    'Lionel Messi', 
    'Dr. Cristiano', 
    'anciano', 
    '2025-10-05 12:30:00 PM +00', 
    NULL
)
(
    'TICKET-1986', 
    'Diego Maradona', 
    'Dr. Pelé', 
    'anciano', 
    '2025-10-05 5:30:00 PM +00', 
    NULL
)
(
    'TICKET-1978', 
    'Mario Kempes', 
    'Dr. Cruyff',  
    '2025-10-05 9:30:00 PM +00', 
    NULL
)
;

SELECT * FROM pacientes;

SELECT * FROM pacientes WHERE id = 'TICKET-1978';

SELECT * FROM pacientes WHERE caso_especial = 'anciano';

UPDATE pacientes SET fecha_atencion = '2025-10-05 12:45:00 PM +00' WHERE id = 'TICKET-2022';

UPDATE pacientes SET doctor = 'Dra. Bonmatí', fecha_atencion = '2025-10-05 12:48:00 PM +00' WHERE id = 'TICKET-2022';

DELETE FROM pacientes WHERE id = 'TICKET-1986';