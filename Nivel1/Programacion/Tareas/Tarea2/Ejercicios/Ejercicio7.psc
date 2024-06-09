//Represente un algoritmo mediante un diagrama de flujo para determinar a
//qu� lugar podr� ir de vacaciones una persona, considerando que la l�nea
//de autobuses "La tortuga" cobra por kil�metro recorrido. Se debe
//considerar el costo del pasaje tanto de ida, como de vuelta; los datos que
//se conocen y que son fijos son: M�xico, 750 km; P.V., 800 km; Acapulco,
//1200 km, y Canc�n, 1800 km. Tambi�n se debe considerar la posibilidad
//de tener que quedarse en casa.

Algoritmo Ejercicio7
	
	Definir presupuesto, c_km, c_mex, c_pv, c_aca, c_can Como Real
	Definir lugares Como Caracter
	
	Escribir "Ingrese el presupuesta de la persona: $"
	Leer presupuesto
	Escribir "Ingrese el costo por kil�metro recorrido: $"
	Leer  c_km
	
	c_mex = 2 * c_km * 750
	c_pv = 2 * c_km * 800
	c_aca = 2 * c_km * 1200
	c_can = 2 * c_km * 1800
	
	Si presupuesto >= c_can Entonces
		lugares = "M�xico, P.V., Acapulco, Canc�n"
	SiNo
		Si presupuesto >= c_aca Entonces
			lugares = "M�xico, P.V., Acapulco"
		SiNo
			Si presupuesto >= c_pv Entonces
				lugares = "M�xico, P.V."
			SiNo
				Si presupuesto >= c_mex Entonces
					lugares = "M�xico"
				SiNo
					lugares = ""
				FinSi
			FinSi
		FinSi
	FinSi
	
	Si lugares <> "" Entonces
		Escribir "La persona puede viajar solo a uno de los siguientes lugares: ", lugares, "."
	SiNo
		Escribir "La persona debe quedarse en casa."
	FinSi
	
FinAlgoritmo
