//Dados dos números enteros positivos N y D, se dice que D es un divisor de N si el resto de dividir N
//entre D es 0. Se dice que un número N es perfecto si la suma de sus divisores (excluido el propio
//N) es N. Por ejemplo 28 es perfecto, pues sus divisores (excluido elv28) son: 1, 2, 4, 7 y 14 y su
//suma es 1+2+4+7+14=28. Hacer un diagrama que dado un número N nos diga si es o no perfecto.

Algoritmo Ejercicio13
	
	Definir n, suma Como Entero
	
	Escribir "Ingrese un número entero: "
	Leer n
	
	Para d = 1 Hasta n - 1
		
		Si n % d == 0 Entonces
			suma = suma + d
		FinSi
		
	Fin Para
	
	Si suma == n Entonces
		Escribir n, " si es un número perfecto."
	SiNo
		Escribir n, " no es un número perfecto."
	FinSi
	
FinAlgoritmo
	