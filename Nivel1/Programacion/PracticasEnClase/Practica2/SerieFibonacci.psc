Algoritmo SerieFibonacci
	Definir termino, b, a, cont, n Como Entero
	Escribir 'Ingrese el número de terminos de la serie: '
	Leer n
	termino <- 0
	a <- 0
	b <- 1
	cont <- 0
	Mientras cont<n Hacer
		Escribir termino, ','
		termino <- a + b
		a <- b
		b <- termino
		cont <- cont+1
	FinMientras
FinAlgoritmo
