//Una empresa que contrata personal requiere determinar la edad de las
//personas que solicitan trabajo, pero cuando se les realiza la entrevista s�lo
//se les pregunta el a�o en que nacieron. Realice el diagrama de flujo y
//pseudoc�digo que representen el algoritmo para solucionar este problema.

Algoritmo Ejercicio6
	
	Definir anio_nac, anio_actual, edad Como Entero
	
	Escribir "Ingrese el a�o de nacimiento: "
	Leer  anio_nac
	Escribir "Ingrese el a�o actual: "
	Leer anio_actual
	
	edad = anio_actual - anio_nac
	
	Escribir  "El aplicante tiene aproximadamente ", edad, " a�os de edad."
	
FinAlgoritmo
