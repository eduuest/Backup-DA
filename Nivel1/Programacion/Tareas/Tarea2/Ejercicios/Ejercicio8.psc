//Se les dará un bono por antigüedad a los empleados de una tienda. Si
//tienen un año, se les dará $100; si tienen 2 años, $200, y así
//sucesivamente hasta los 5 años. Para los que tengan más de 5, el bono
//será de $1000. Realice un algoritmo y represéntelo mediante el diagrama
//de flujo, el pseudocódigo y diagrama N/S que permita determinar el bono
//que recibirá un trabajador.

Algoritmo Ejercicio8
	
	Definir anios_a, bono Como Real
	
	Escribir "Ingrese los años de antiguedad: "
	Leer anios_a
	
	si anios_a > 5 Entonces
		bono = 1000
	SiNo
		bono = anios_a * 100
	FinSi
	
	Escribir "El trabajador recibirá un bono de $", bono, "."
	
FinAlgoritmo
