//Represente un algoritmo mediante un diagrama de flujo para determinar a
//qué lugar podrá ir de vacaciones una persona, considerando que la línea
//de autobuses "La tortuga" cobra por kilómetro recorrido. Se debe
//considerar el costo del pasaje tanto de ida, como de vuelta; los datos que
//se conocen y que son fijos son: México, 750 km; P.V., 800 km; Acapulco,
//1200 km, y Cancún, 1800 km. También se debe considerar la posibilidad
//de tener que quedarse en casa.

Algoritmo Ejercicio7
	
	Definir presupuesto, c_km, c_mex, c_pv, c_aca, c_can Como Real
	Definir lugares Como Caracter
	
	Escribir "Ingrese el presupuesta de la persona: $"
	Leer presupuesto
	Escribir "Ingrese el costo por kilòmetro recorrido: $"
	Leer  c_km
	
	c_mex = 2 * c_km * 750
	c_pv = 2 * c_km * 800
	c_aca = 2 * c_km * 1200
	c_can = 2 * c_km * 1800
	
	Si presupuesto >= c_can Entonces
		lugares = "Mèxico, P.V., Acapulco, Cancùn"
	SiNo
		Si presupuesto >= c_aca Entonces
			lugares = "Mèxico, P.V., Acapulco"
		SiNo
			Si presupuesto >= c_pv Entonces
				lugares = "Mèxico, P.V."
			SiNo
				Si presupuesto >= c_mex Entonces
					lugares = "Mèxico"
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
