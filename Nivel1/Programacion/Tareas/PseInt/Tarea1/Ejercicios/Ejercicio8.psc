//La compa��a de autobuses "La curva loca" requiere determinar el costo que
//tendr� el boleto de un viaje sencillo, esto basado en los kil�metros por
//recorrer y en el costo por kil�metro. Realice un diagrama de flujo y
//pseudoc�digo que representen el algoritmo para tal fin.

Algoritmo Ejercicio8
	
	Definir num_kilotros, c_kilometro, total Como Real
	
	Escribir "Ingrese el n�mero de kil�metros de viaje: "
	Leer num_kilotros
	Escribir "Ingrese el costo en d�lares por kil�metro de viaje: "
	Leer c_kilometro
	
	total = num_kilotros * c_kilometro
	
	Escribir "El boleto tendr� un costo de $", total
	
FinAlgoritmo
