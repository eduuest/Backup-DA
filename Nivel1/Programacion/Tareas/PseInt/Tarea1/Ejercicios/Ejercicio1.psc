// Pidiendo el ingreso del numerador y denominador de 2 fracciones mostrar la suma.


Algoritmo Ejercicio1
	
	Definir n1, n2, d1, d2, nr, dr Como Entero
	
	Escribir "Ingrese el numerador de la primara fracci�n: "
	Leer n1
	Escribir "Ingrese el denominador de la primera fracci�n: "
	leer d1
	Escribir "Ingrese el numerador de la segunda fracci�n: "
	leer n2
	Escribir "Ingrese el denominador de la segunda fracci�n: "
	leer d2
	
	dr = d1 * d2
	nr = (dr/d1)*n1 + (dr/d2)*n2
	
	Escribir n1, "/", d1, " + ", n2, "/", d2, " = ", nr, "/", dr
	
FinAlgoritmo
