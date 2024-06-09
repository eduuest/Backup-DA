//Una compañía de seguros para autos ofrece dos tipos de póliza: cobertura
//amplia (A) y daños a terceros (B). Para el plan A, la cuota base es de
//$1,200, y para el B, de $950. A ambos planes se les carga 10% del costo
//si la persona que conduce tiene por hábito beber alcohol, 5% si utiliza
//lentes, 5% si padece alguna enfermedad ?como deficiencia cardiaca o
//diabetes?, y si tiene más de 40 años, se le carga 20%, de lo contrario sólo
//10%. Todos estos cargos se realizan sobre el costo base. Realice diagrama
//de flujo y diagrama N/S que represente el algoritmo para determinar
//cuánto le cuesta a una persona contratar una póliza.

Algoritmo Ejercicio6
	
	Definir tipo, ba, ul, pe Como Caracter
	Definir edad Como Entero
	Definir c_base, total Como Real
	
	Escribir "Ingrese el tipo de poliza que desea contratar (A o B): "
	Leer tipo
	Escribir "¿Usted bebe alcohol? (si o no): "
	Leer ba
	Escribir "¿Usted utiliza lentes? (si o no): "
	Leer ul
	Escribir "¿Padece algura enfermedad como deficiencia cardiaca o diabetes? (si o no): "
	Leer pe
	Escribir "Ingrese su edad: "
	Leer edad
	
	Si tipo == "A" Entonces
		c_base = 1200
	SiNo
		c_base = 950
	FinSi
	
	total = c_base
	
	Si ba == "si" Entonces
		total = total + 0.1 * c_base
	FinSi
	
	Si ul == "si" Entonces
		total = total + 0.05 * c_base
	FinSi
	
	si pe == "si" Entonces
		total = total + 0.05 * c_base
	FinSi
	
	si edad > 40 Entonces
		total = total + 0.2 * c_base
	SiNo
		total = total + 0.1 * c_base
	FinSi
	
	Escribir "El costo por contratar la poliza de tipo ", tipo, " es de $", total
	
FinAlgoritmo
