//Los alumnos de una escuela desean realizar un viaje de estudios, pero
//requieren determinar cu�nto les costar� el pasaje, considerando que las
//tarifas del autob�s son las siguientes: si son m�s de 100 alumnos, el costo
//es de $20; si son entre 50 y 100, $35; entre 20 y 49, $40, y si son menos
//de 20 alumnos, $70 por cada uno. Realice el algoritmo para determinar el
//costo del pasaje de cada alumno. Represente el algoritmo mediante el
//diagrama de flujo, el pseudoc�digo.

Algoritmo Ejercicio10
	
	Definir num_al Como Entero
	Definir cp, total Como Real
	
	Escribir "Ingrese el n�mero de alumnos que viajaran: $"
	Leer num_al
	
	Si num_al > 100 Entonces
		cp = 20 
	SiNo
		Si num_al >= 50 Entonces
			cp = 35
		SiNo
			Si num_al >= 20 Entonces
				cp = 40
			SiNo
				cp = 70
			FinSi
		FinSi
	FinSi
	
	total = num_al * cp
	
	Escribir "| Costo por alumno: $", cp, " | N�mero de alumnos: $", num_al, " | Total: $", total, " |"
	
FinAlgoritmo
