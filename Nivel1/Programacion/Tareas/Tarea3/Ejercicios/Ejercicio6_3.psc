//Hacer el diagrama de flujo para sumar los N primeros impares. Realizar despu�s uno que haga lo
//mismo con los pares y, otro, con los m�ltiplos de 3.

Algoritmo Ejercicio6_3
	
	Definir n, cont, suma Como Entero
	
	Escribir "Ingrese la cantidad de n�meros m�ltiplos de 3 que desea sumar: "
	Leer  n
	
	cont = 1
	suma = 0
	
	Mientras cont <= n Hacer
		
		suma = suma + cont * 3
		cont = cont + 1
		
	Fin Mientras
	
	Escribir "La suma de los ", n, " primeros n�meros m�ltiplos de 3 es: ", suma, "."
	
FinAlgoritmo