//Un hombre desea saber cuánto dinero se genera por concepto de
//intereses sobre la cantidad que tiene en inversión en el banco. El decidirá
//reinvertir los intereses siempre y cuando estos excedan a $7000, y en
//ese caso desea saber cuánto dinero tendrá finalmente en su cuenta.

Algoritmo Ejercicio3
	
	Definir inversion, p_interes, interes, total Como Real
	
	Escribir "Ingrese el monto invertido en dòlares: "
	Leer inversion
	Escribir "Ingrese la tasa de interes (entre 0 y 1): "
	Leer p_interes
	
	interes = inversion * p_interes
	
	Si interes > 7000 Entonces
		total = inversion + interes
		Escribir "Reinvierte los intereses, el total en su cuenta es de $", total
	SiNo
		Escribir "No reinvierte los intereses."
	FinSi
	
FinAlgoritmo
