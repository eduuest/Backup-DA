//La sucesión de Fibonacci se define de la siguiente forma: a1=1, a2=1 y an=an-1+an-2 para n>2,
//es decir los dos primeros son 1 y el resto cada uno es la suma de los dos anteriores, los primeros
//son: 1, 1, 2, 3, 5, 8, 13, 21,... Hacer un diagrama de flujo para calcular el Nésimo término de la
//sucesión.

Algoritmo Ejercicio15
	
	Definir a1, a2, an, n, cont Como Entero
	
	Escribir "Ingrese un número: "
	Leer n
	
	cont = 0
	a1 = 0
	a2 = 1
	an = 0
	
	Mientras cont < n Hacer
		
		Escribir an
		
		a1 = a2
		a2 = an
		an = a1 + a2
		
		cont = cont + 1
		
	FinMientras
	
FinAlgoritmo