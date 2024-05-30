Algoritmo Ejercicio4
	
	Definir r, h, area, volumen Como Real
	Definir op Como Entero
	
	Escribir ("Ingrese el radio del cilindro: ")
	Leer r
	Escribir ("Ingrese la altura del cilindro: ")
	leer h
	Escribir ("Ingrese 1 para calcular el area y 2 para calcular el volumen: ")
	leer op
	
	
	Si op == 1 Entonces
		area = 2 * pi * r * (r + h)
		Escribir "El area del cilindro es: ", area
	SiNo
		volumen = pi * (r^2) * h
		Escribir "El volumen del cilindro es: ", volumen
	Fin Si
	
FinAlgoritmo
