// De 10 n�meros ingresados indicar cuantos son mayores a cero y cuantos son menores a cero.

Algoritmo Ejercicio9
	
	Definir num, cont, mayores, menores Como Entero
	
	cont = 1
	
	Mientras cont <= 10 Hacer
		
		Escribir cont, "/10 - Ingrese un n�mero: "
		Leer num
		
		Si num < 0 Entonces
			menores = menores + 1
		FinSi
		
		Si num > 0 Entonces
			mayores = mayores + 1
		FinSi
		
		cont = cont + 1
		
	FinMientras
	
	Escribir "De los n�meros ingresados ", menores, " son menores a cero y ", mayores, " son mayores a cero."
	
FinAlgoritmo