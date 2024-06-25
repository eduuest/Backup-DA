//Ingresar un número, entero y efectuar la suma de todos los números que le anteceden,
//comenzando desde 0 y mostrar el resultado por pantalla.

Algoritmo Ejercicio5
	
	Definir num, cont Como Entero
	Definir suma Como Real
	
	Escribir "Ingrese un número entero: "
	Leer num
	
	cont = 0
	suma = 0
	
	Mientras cont < num Hacer
		
		suma = suma + cont
		cont = cont + 1
		
	Fin Mientras
	
	Escribir "La suma de los números que anteceden a ", num, " es: ", suma, "."
	
FinAlgoritmo