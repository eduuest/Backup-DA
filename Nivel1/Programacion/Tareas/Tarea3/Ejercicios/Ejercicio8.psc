//Escribir en Diagrama de flujo un algoritmo que muestre los números primos comprendidos entre 0 y 100

Algoritmo Ejercicio8
	
	Definir num, divisor, es_primo Como Entero
	
	num = 2
	
	Mientras num <= 100 Hacer
		
		divisor = 2
		es_primo = 1
		
		Mientras divisor < num y es_primo == 1 Hacer
			
			Si num % divisor == 0 Entonces
				es_primo = 0
			FinSi
			
			divisor = divisor + 1
			
		Fin Mientras
		
		Si es_primo == 1 Entonces
			Escribir num
		FinSi
		
		num = num + 1
		
	Fin Mientras
	
FinAlgoritmo