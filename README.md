#Descripción del proyecto.
el proyecto es para  una compañia para mejorar su gestion de informacion
## Tecnologías utilizadas.
sql,
## Motor de base de datos utilizado.
pgadmin
## Explicación del proceso de normalización.
cada  tabla  tiene registros repetidos, se  deben eliminar estos registros repetidos y algunos nombres mal escritos  y ponerlos de la manera en como van, asi estariamos  cumpliendo con la  primera forma  de normalizacion, la  cual dice que cada celda contiene un único dato y que no hay atributos que permitan múltiples valores o grupos.

tablas como ProductName, Quantity,UnitPrice deben estar separados de category,  esta debe estar en otra tabla totalmente diferente para cumplir  con la segunda forma normalizacion, tambien see aplica lo mismo para movementDate, puchaseOrder que debe estar separada de movementType en otra tabla para  cumplir con la primera, segunda y tercera forma de normalizacion ademas se  elimino una celda la cual fue, warehouse_city debido  a que contenia la misma informacion y los mismos datos de suppliercity esta se le cambio el nombre a city

se  agregaron nueva  tabla llamada  movimientos para registrar los movimientos de entrada y salida y de mas
ronaldo rodriguez de lima
clan magdaleena
