// Realice un diagrama de flujo que representen el algoritmo para determinar
//cuánto pagará finalmente una persona por un artículo equis, considerando
//que tiene un descuento de 20%, y debe pagar 12% de IVA (debe mostrar el
//precio con descuento y el precio final).

Algoritmo Ejercicio9
	
	Definir p_articulo, p_descuento, p_final Como Real
	
	Escribir "Ingrese el precio del articulo: "
	Leer p_articulo
	
	p_descuento = p_articulo * 0.8
	p_final = p_descuento * 1.12
	
	Escribir "Precio con descuento: $", p_descuento, ", Precio final: $", p_final
	
FinAlgoritmo
