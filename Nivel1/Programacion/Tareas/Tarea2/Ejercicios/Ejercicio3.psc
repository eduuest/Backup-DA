//Un hombre desea saber cu�nto dinero se genera por concepto de
//intereses sobre la cantidad que tiene en inversi�n en el banco. El decidir�
//reinvertir los intereses siempre y cuando estos excedan a $7000, y en
//ese caso desea saber cu�nto dinero tendr� finalmente en su cuenta.

Algoritmo Ejercicio3
	
	Definir inversion, p_interes, interes, total Como Real
	
	Escribir "Ingrese el monto invertido en d�lares: "
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
