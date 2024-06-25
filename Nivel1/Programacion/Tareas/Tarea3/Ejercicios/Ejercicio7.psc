//Escribir en Diagrama de flujo que lea 20 caracteres. Luego de la lectura indicar cuantas "a" se
//ingresaron, cuantas "e, i, o, u"

Algoritmo Ejercicio7
	
	Definir letra Como Caracter
	Definir num_caracter, num_a, num_e, num_i, num_o, num_u Como Entero
	
	num_caracter = 1
	num_a = 0
	num_e = 0
	num_i = 0
	num_o = 0
	num_u = 0
	
	Mientras num_caracter <= 20 Hacer
		
		Escribir num_caracter, "/20 - Ingrese un caracter: "
		Leer letra
		
		Si letra == "a" Entonces 
			num_a = num_a + 1
		FinSi

		Si letra == "e" Entonces 
			num_e = num_e + 1
		FinSi
		
		Si letra == "i" Entonces 
			num_i = num_i + 1
		FinSi
		
		Si letra == "o" Entonces 
			num_o = num_o + 1
		FinSi
		
		Si letra == "u" Entonces 
			num_u = num_u + 1
		FinSi
		
		num_caracter = num_caracter + 1
		
	Fin Mientras
	
	Escribir "Se ingresaron caracteres: a = ", num_a, ", e = ", num_e, ", i = ", num_i, ", o = ", num_o,", u = ", num_u, "."
	
FinAlgoritmo