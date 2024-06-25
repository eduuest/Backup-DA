//Realizar la tabla de multiplicar de un número entre 0 y 10 de forma que se visualice de la siguiente
//forma: 4x1= 4 4x2= 8

Algoritmo Ejercicio10
	
	Definir num, cont, res Como Entero
	
	Escribir "Ingrese un número para imprimir su tabla de multiplicar: "
	Leer num
	
	cont = 0
	
	Mientras cont <= 10 Hacer
		
		res = num * cont
		Escribir num, " x ", cont, " = ", res
		cont = cont + 1
		
	FinMientras
	
FinAlgoritmo