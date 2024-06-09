//F�bricas "El cometa" produce art�culos con claves (1, 2, 3, 4, 5 y 6). Se requiere un algoritmo para calcular los precios de venta, para esto 
//hay que considerar lo siguiente: Costo de producci�n = materia prima + mano de obra + gastos de
//fabricaci�n. Precio de venta = costo de producci�n + 45 % de costo de producci�n.
//El costo de la mano de obra se obtiene de la siguiente forma: para los productos con clave 3 o 4 se carga 75 % del costo de la materia prima;
//para los que tienen clave 1 y 5 se carga 80 %, y para los que tienen clave 2 o 6, 85 %. Para calcular el gasto de fabricaci�n se considera que 
//si el art�culo que se va a producir tiene claves 2 o 5, este gasto representa 30 % sobre el
//costo de la materia prima; si las claves son 3 o 6, representa 35 %; si las claves son 1 o 4, representa 28 %. La materia prima tiene el mismo
//costo para cualquier clave. Represente mediante el diagrama de flujo, el pseudoc�digo y el diagrama N/S la soluci�n de este problema.
//Con las consideraciones anteriores se puede establecer la tabla 3.13 de variables requeridas para el planteamiento del algoritmo correspondiente.

Algoritmo Ejercicio4
	
	Definir c Como Entero
	Definir mp, mo, gf, cp, pv Como Real
	
	Escribir "Ingrese la clave del art�culo (entre 1 y 6): "
	Leer c
	Escribir "Ingrese el costo de la materia prima: "
	Leer mp
	
	Si c == 3 o c == 4 Entonces
		mo = 0.75 * mp
	SiNo
		Si c == 1 o c == 5 Entonces
			mo = 0.8 * mp
		SiNo
			mo = 0.85 * mp
		FinSi
	FinSi
	
	Si c == 2 o c == 5 Entonces
		gf = 0.3 * mp
	SiNo
		Si c == 3 o c == 6 Entonces
			gf = 0.35 * mp
		SiNo
			gf = 0.28 * mp
		FinSi
	FinSi
	
	cp = mp + mo + gf
	pv = cp + 0.45 * cp
	
	Escribir "El precio de venta del art�culo es de $", pv
	
FinAlgoritmo
