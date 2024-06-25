//Calcular la factorial de un número.

Algoritmo Ejercicio11
	
	Definir num, factorial, cont Como Entero
	
	Escribir "Ingrese un número para calcular su factorial: "
	Leer num
	
	cont = 1
	factorial = 1
	
	Mientras cont <= num Hacer
		
		factorial = factorial * cont
		cont = cont + 1
		
	FinMientras
	
	Escribir num, "! = ", factorial
	
FinAlgoritmo