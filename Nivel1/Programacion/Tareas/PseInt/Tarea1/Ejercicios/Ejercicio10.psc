//Realice un diagrama de flujo que representen el algoritmo para determinar
//cu�nto dinero ahorra una persona en un a�o si considera que cada semana
//ahorra 15% de su sueldo (considere cuatro semanas por mes y que no
//cambia el sueldo).

Algoritmo Ejercicio10
	
	Definir sueldo, ahorro Como Real
	
	Escribir "Ingresar el sueldo semanal: "
	Leer sueldo
	
	ahorro = 4 * 12 * sueldo * 0.15
	
	Escribir "En un a�o, la persona ahorra: $", ahorro
	
FinAlgoritmo
