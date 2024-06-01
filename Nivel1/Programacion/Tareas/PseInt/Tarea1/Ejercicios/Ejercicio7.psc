//Se requiere determinar la hipotenusa de un triángulo rectángulo. ¿Cómo
//sería el diagrama de flujo y el pseudocódigo que representen el algoritmo
//para obtenerla? Recuerde que por Pitágoras se tiene que: C2 = A2 + B2.

Algoritmo Ejercicio7
	
	Definir a, b, c Como Real
	
	Escribir "Ingrese la medida en cm del cateto a: "
	Leer a
	Escribir "Ingrese la medida en cm del cateto b: "
	Leer b
	
	c = raiz(a^2 + b^2)
	
	Escribir "La hipotenusa para un triangulo cuyos catetos son a=", a, " y b=", b, " es igual a c=", c, "."
	
FinAlgoritmo
