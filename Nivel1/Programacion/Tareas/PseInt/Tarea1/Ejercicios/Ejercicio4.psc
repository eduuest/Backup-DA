//Diseñar un algoritmo que determine el área y el volumen de un cilindro.

Algoritmo Ejercicio4
	
	Definir r, h, area, volumen Como Real
	
	Escribir "Ingrese el radio en cm del cilíndro: "
	Leer r
	Escribir "Ingrese la altura en cm del cilíndro: "
	Leer h
	
	area = 2 * pi * r * (r + h) 
	volumen = pi * r^2 * h
	
	Escribir "El area del cilíndro es ", area, "cm2 y su volúmen es de ", volumen, "cm3."
	
FinAlgoritmo
