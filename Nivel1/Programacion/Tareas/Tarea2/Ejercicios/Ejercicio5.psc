//Determinar la cantidad de dinero que recibirá un trabajador por concepto
//de las horas extras trabajadas en una empresa, sabiendo que cuando las
//horas de trabajo exceden de 40, el resto se consideran horas extras y que
//estas se pagan al doble de una hora normal cuando no exceden de 8; si
//las horas extras exceden de 8 se pagan las primeras 8 al doble de lo que
//se pagan las horas normales y el resto al triple.

Algoritmo Ejercicio5
	
	Definir num_horas, h_extras Como Entero
	Definir c_hora, total Como Real
	
	Escribir "Ingrese el nùmero de horas trabajadas: "
	Leer num_horas
	Escribir "Ingrese el costo normal por hora trabajada: $"
	leer c_hora
	
	total = 0
	h_extras = 0
	
	Si num_horas > 40 Entonces
		h_extras = num_horas - 40
		Si h_extras > 8 Entonces
			total = 2 * c_hora * 8 + 3 * c_hora * (h_extras - 8) 
		SiNo
			total = 2 * c_hora * h_extras
		FinSi
	FinSi
	
	Escribir "El trabajador recibira $", total, " por concepto de ", h_extras, " hora(s) extra(s) trabajada(s)."
	
FinAlgoritmo
