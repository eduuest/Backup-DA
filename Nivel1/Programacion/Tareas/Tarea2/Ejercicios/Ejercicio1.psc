//Pedir un n�mero del 1 al 7 y decir el d�a de la semana correspondiente.

Algoritmo Ejercicio1
	
	Definir num Como Entero
	
	Escribir "Ingresa un n�mero entero: "
	Leer num
	
	Si num == 1 Entonces
		Escribir "Lunes."
	SiNo
		Si num == 2 Entonces
			Escribir "Martes."
		SiNo
			Si num == 3 Entonces
				Escribir "Miercoles."
			SiNo
				Si num == 4 Entonces
					Escribir "Jueves."
				SiNo
					Si num == 5 Entonces
						Escribir "Viernes."
					SiNo
						Si num == 6 Entonces
							Escribir "Sabado."
						SiNo
							Si num == 7 Entonces
								Escribir "Domingo."
							SiNo
								Escribir "No es un d�a de la semana."
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo
