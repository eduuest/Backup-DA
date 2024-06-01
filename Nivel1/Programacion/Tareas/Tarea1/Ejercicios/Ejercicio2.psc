//Se requiere determinar el tiempo que tarda una persona en llegar de una
//ciudad a otra en bicicleta, considerando que lleva una velocidad constante.
//Realice un diagrama de flujo y pseudocódigo que representen el algoritmo para tal fin.

Algoritmo Ejercicio2
	
	definir t, d, v Como Real
	
	Escribir "Ingrese la distancia en metros a la que se encuentra la ciudad: "
	leer d
	Escribir "Ingrese la velocidad en m/s que lleva la persona: "
	leer v
	
	t =  d / v
	
	Escribir "A la persona le toma llegar ", t, " segundos llegar de una ciudad a otra."
	
FinAlgoritmo
