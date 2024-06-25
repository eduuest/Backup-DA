//Pedir las notas de 15 estudiantes, establecidas entre cero y 10. Se desea desarrollar el diagrama
//de flujo que determine la nota media de los 15 alumnos.

Algoritmo Ejercicio4
	
	Definir nota, nota_media, num_alumno Como Real
	
	num_alumno = 1
	
	Mientras num_alumno <= 15 Hacer
		
		Escribir "Ingrese la nota sobre 10 del alumno N°", num_alumno, ": "
		Leer nota
		
		nota_media = nota_media + nota
		num_alumno = num_alumno + 1
		
	Fin Mientras
	
	nota_media = nota_media / 15
	
	Escribir "La nota media de los 15 estudiantes es de ", nota_media, "."
	
FinAlgoritmo
