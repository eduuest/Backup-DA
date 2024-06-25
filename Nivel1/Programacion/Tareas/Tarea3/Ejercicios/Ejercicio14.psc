//Estimación de la Población. El usuario ingresa la población de un país y su tasa de crecimiento
//anual (expresada como un porcentaje). Calcular la población de ese país luego de uno, dos, y tres
//años, asumiendo que la tasa de crecimiento poblacional se mantiene constante.

Algoritmo Ejercicio14
	
	Definir cont Como Entero
	Definir poblacion, tasa Como Real
	
	Escribir "Ingrese la población: "
	Leer poblacion
	
	Escribir "Ingrese la tasa de crecimiento [0-1]: "
	Leer tasa
	
	cont = 1
	
	Mientras cont <= 3 Hacer
		
		poblacion = poblacion + poblacion * tasa
		Escribir "La población luego de ", cont, " año(s) es de: ", redon(poblacion), "."
		
		cont = cont + 1
		
	FinMientras
	
	
FinAlgoritmo