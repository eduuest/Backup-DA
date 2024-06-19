Algoritmo SerieFibonacci
	
	Definir a, b, c, cont, n Como Entero
	
	Escribir 'Ingrese el número de terminos de la serie: '
	Leer n

	a = 0
	b = 1
	c = 0
	cont = 0
	
	Mientras cont < n Hacer
		
		Escribir a
		
		c = a + b
		a = b
		b = c
		
		cont = cont + 1
		
	FinMientras
	
FinAlgoritmo
