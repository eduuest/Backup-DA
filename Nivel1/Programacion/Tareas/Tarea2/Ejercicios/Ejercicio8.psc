//Se les dar� un bono por antig�edad a los empleados de una tienda. Si
//tienen un a�o, se les dar� $100; si tienen 2 a�os, $200, y as�
//sucesivamente hasta los 5 a�os. Para los que tengan m�s de 5, el bono
//ser� de $1000. Realice un algoritmo y repres�ntelo mediante el diagrama
//de flujo, el pseudoc�digo y diagrama N/S que permita determinar el bono
//que recibir� un trabajador.

Algoritmo Ejercicio8
	
	Definir anios_a, bono Como Real
	
	Escribir "Ingrese los a�os de antiguedad: "
	Leer anios_a
	
	si anios_a > 5 Entonces
		bono = 1000
	SiNo
		bono = anios_a * 100
	FinSi
	
	Escribir "El trabajador recibir� un bono de $", bono, "."
	
FinAlgoritmo
