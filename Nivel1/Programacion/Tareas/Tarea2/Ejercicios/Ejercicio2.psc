//Leer 2 n�meros; si son iguales que los multiplique, si el primero es
//mayor que el segundo que los reste y si no que los sume.

Algoritmo Ejercicio2
	
	Definir num1, num2, res Como Real
	
	Escribir "Ingrese un n�mero: "
	Leer num1
	Escribir "Ingrese otro n�mero: "
	Leer num2
	
	Si num1 == num2 Entonces
		res = num1 * num2
		Escribir num1, " x ", num2, " = ", res
	SiNo
		si num1 > num2 Entonces
			res = num1 - num2
			Escribir num1, " - ", num2, " = ", res
		SiNo
			res = num1 + num2
			Escribir num1, " + ", num2, " = ", res
		FinSi
	FinSi
	
FinAlgoritmo
