//Una empresa que contrata personal requiere determinar la edad de las
//personas que solicitan trabajo, pero cuando se les realiza la entrevista sólo
//se les pregunta el año en que nacieron. Realice el diagrama de flujo y
//pseudocódigo que representen el algoritmo para solucionar este problema.

Algoritmo Ejercicio6
	
	Definir anio_nac, anio_actual, edad Como Entero
	
	Escribir "Ingrese el año de nacimiento: "
	Leer  anio_nac
	Escribir "Ingrese el año actual: "
	Leer anio_actual
	
	edad = anio_actual - anio_nac
	
	Escribir  "El aplicante tiene aproximadamente ", edad, " años de edad."
	
FinAlgoritmo
