//Hacer un diagrama de flujo que imprima los números impares hasta el 100 y que imprima cuantos impares hay.

Algoritmo Ejercicio3
	
	Definir n, cont Como Entero
	
	n = 0
	cont = 0
	
	Mientras n <= 100 Hacer
		
		Si n % 2 <> 0 Entonces
			Escribir n
			cont = cont + 1
		Fin Si
		
		n = n + 1
		
	Fin Mientras
	
	Escribir "Existen ", cont, " numeros impares entre 0 - 100."
	
FinAlgoritmo
