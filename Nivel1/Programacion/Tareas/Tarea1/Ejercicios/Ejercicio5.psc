//Una empresa desea determinar el monto de un cheque que debe
//proporcionar a uno de sus empleados que tendrá que ir por equis número de
//días a la ciudad de Quito; los gastos que cubre la empresa son: hotel,
//comida y $100.00 dólares diarios para otros gastos. El monto debe estar
//desglosado para cada concepto. Realice un diagrama de flujo que
//representen el algoritmo que determine el monto del cheque.

Algoritmo Ejercicio5
	
	Definir num_dias Como Entero
	Definir c_hotel, c_comida, o_gastos, total Como Real
	
	Escribir "Ingrese número de dias de estadía en Quito: "
	Leer num_dias
	Escribir "Ingrese el costo en dólares por día de hospedaje: "
	Leer c_hotel
	Escribir "Ingrese el costo en dólares por día de comida: "
	Leer c_comida
	
	c_hotel = c_hotel * num_dias
	c_comida = c_comida * num_dias
	o_gastos = 100 * num_dias
	total = c_hotel + c_comida + o_gastos
	
	Escribir "Se debe proporcionar un cheque por un monto de $", total, " por concepto de: "
	Escribir "Días de estadía: ", num_dias, "."
	Escribir "Costo total por estadía en un hotel: $", c_hotel
	Escribir "Costo total en comida: $", c_comida
	Escribir "Total en otros gastos: $", o_gastos
	
FinAlgoritmo
