//Dise�ar un algoritmo que determine el �rea y el volumen de un cilindro.

Algoritmo Ejercicio4
	
	Definir r, h, area, volumen Como Real
	
	Escribir "Ingrese el radio en cm del cil�ndro: "
	Leer r
	Escribir "Ingrese la altura en cm del cil�ndro: "
	Leer h
	
	area = 2 * pi * r * (r + h) 
	volumen = pi * r^2 * h
	
	Escribir "El area del cil�ndro es ", area, "cm2 y su vol�men es de ", volumen, "cm3."
	
FinAlgoritmo
