//Hacer el diagrama de flujo para sumar los N primeros impares. Realizar despu�s uno que haga lo
//mismo con los pares y, otro, con los m�ltiplos de 3.

Algoritmo Ejercicio6_1
	
	Definir n, cont, suma Como Entero
	
	Escribir "Ingrese la cantidad de n�meros impares que desea sumar: "
	Leer  n
	
	cont = 0
	suma = 0
	
	Mientras cont / 2 < n Hacer
		
		Si cont % 2 <> 0 Entonces
			
			suma = suma + cont

		Fin Si
		
		cont = cont + 1
		
	Fin Mientras
	
	Escribir "La suma de los ", n, " primeros n�meros impares es: ", suma, "."
	
FinAlgoritmo