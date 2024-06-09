//El banco "Bandido de peluche" desea calcular para uno de sus clientes el
//saldo actual, el pago m�nimo y el pago para no generar intereses. Los
//datos que se conocen son: saldo anterior del cliente, monto de las
//compras que realiz� y el pago que deposit� en el corte anterior. Para
//calcular el pago m�nimo se debe considerar 15% del saldo actual, y para
//no generar intereses corresponde 85% del saldo actual, considerando que
//este saldo debe incluir 12% de los intereses causados por no realizar el
//pago m�nimo y $200 por multa por el mismo motivo. Realice el algoritmo
//correspondiente y repres�ntelo mediante el diagrama de flujo y
//pseudoc�digo.

Algoritmo Ejercicio9
	
	Definir saldo_ac, pago_min, pago_no_gi, saldo_an, monto_c, pago_ca Como Real
	
	Escribir "Ingrese el saldo anterior del cliente: $"
	Leer saldo_an
	Escribir "Ingrese el monto de las compras que realiz�: $"
	leer monto_c
	Escribir "Ingrese el pago que deposit� en el corte anterior: $"
	Leer pago_ca
	
	
	saldo_ac = saldo_an + monto_c - pago_ca
	pago_min = 0.15 * saldo_an
	
	Si pago_ca < pago_min Entonces
		saldo_ac = saldo_ac + 0.12 * saldo_ac + 200
	FinSi
	
	pago_min = 0.15 * saldo_ac
	pago_no_gi = 0.85 * saldo_ac
	
	Escribir "| Saldo Actual: $", saldo_ac, " | pago m�nimo: $", pago_min, " | Pago para no generar intereses: $", pago_no_gi, " |" 
	
FinAlgoritmo
