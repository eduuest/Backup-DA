Algoritmo Ejercicio3
	
	Definir a, b, s, r, op Como Entero
	
	Escribir ("Ingresa un numero: ")
	leer a
	Escribir ("Ingresa otro numero: ")
	Leer b
	Escribir ("Escribe 1 para sumar o 2 para restar: ")
	Leer op
	
	Si op == 1 Entonces
		s = a + b
		Escribir "La suma es: ", s
	SiNo
		r = a - b
		Escribir "La resta es: ", r
	Fin Si
	
FinAlgoritmo
