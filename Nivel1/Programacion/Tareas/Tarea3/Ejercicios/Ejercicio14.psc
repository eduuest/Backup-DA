//Estimaci�n de la Poblaci�n. El usuario ingresa la poblaci�n de un pa�s y su tasa de crecimiento
//anual (expresada como un porcentaje). Calcular la poblaci�n de ese pa�s luego de uno, dos, y tres
//a�os, asumiendo que la tasa de crecimiento poblacional se mantiene constante.

Algoritmo Ejercicio14
	
	Definir cont Como Entero
	Definir poblacion, tasa Como Real
	
	Escribir "Ingrese la poblaci�n: "
	Leer poblacion
	
	Escribir "Ingrese la tasa de crecimiento [0-1]: "
	Leer tasa
	
	cont = 1
	
	Mientras cont <= 3 Hacer
		
		poblacion = poblacion + poblacion * tasa
		Escribir "La poblaci�n luego de ", cont, " a�o(s) es de: ", redon(poblacion), "."
		
		cont = cont + 1
		
	FinMientras
	
	
FinAlgoritmo