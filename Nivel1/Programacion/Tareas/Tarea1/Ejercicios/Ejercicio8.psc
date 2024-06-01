//La compañía de autobuses "La curva loca" requiere determinar el costo que
//tendrá el boleto de un viaje sencillo, esto basado en los kilómetros por
//recorrer y en el costo por kilómetro. Realice un diagrama de flujo y
//pseudocódigo que representen el algoritmo para tal fin.

Algoritmo Ejercicio8
	
	Definir num_kilotros, c_kilometro, total Como Real
	
	Escribir "Ingrese el número de kilómetros de viaje: "
	Leer num_kilotros
	Escribir "Ingrese el costo en dólares por kilómetro de viaje: "
	Leer c_kilometro
	
	total = num_kilotros * c_kilometro
	
	Escribir "El boleto tendrá un costo de $", total
	
FinAlgoritmo
