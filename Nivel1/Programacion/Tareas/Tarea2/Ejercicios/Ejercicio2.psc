//Leer 2 números; si son iguales que los multiplique, si el primero es
//mayor que el segundo que los reste y si no que los sume.

Algoritmo Ejercicio2
	
	Definir num1, num2, res Como Real
	
	Escribir "Ingrese un nùmero: "
	Leer num1
	Escribir "Ingrese otro nùmero: "
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
