//Leer sucesivamente números del teclado hasta que aparezca un número comprendido entre 1 y 5.

Algoritmo Ejercicio12
	
	Definir num Como Entero
	
	num = 0
	
	Mientras num < 1 o num > 5 Hacer
		
		Escribir "Ingrese un número: "
		Leer num
		
	FinMientras
	
	Escribir "Has ingresado un número comprendido entre 1 y 5, número = ", num, "."
	
FinAlgoritmo