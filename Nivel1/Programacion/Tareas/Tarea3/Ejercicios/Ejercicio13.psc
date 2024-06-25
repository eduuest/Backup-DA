//Dados dos números enteros positivos N y D, se dice que D es un divisor de N si el resto de dividir N
//entre D es 0. Se dice que un número N es perfecto si la suma de sus divisores (excluido el propio
//N) es N. Por ejemplo 28 es perfecto, pues sus divisores (excluido elv28) son: 1, 2, 4, 7 y 14 y su
//suma es 1+2+4+7+14=28. Hacer un diagrama que dado un número N nos diga si es o no perfecto.

Algoritmo Ejercicio13
	
	Definir num, divisor, suma Como Entero
	
	Escribir "Ingrese un número entero: "
	Leer num
	
	divisor = 1
	suma = 0
	
	Mientras divisor < num Hacer
		
		Si num % divisor == 0 Entonces
			suma = suma + divisor
		FinSi
		
		divisor = divisor + 1
		
	FinMientras
	
	Si suma == num Entonces
		Escribir num, " es un número perfecto."
	SiNo
		Escribir num, " no es un número perfecto."
	FinSi
	
FinAlgoritmo