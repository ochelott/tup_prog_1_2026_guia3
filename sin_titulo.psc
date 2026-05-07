Algoritmo sin_titulo
	Definir cantNotas, cantApro, cantNoA, M, B, R, I, acumnotas Como Entero;
	Definir nota, prom, porcentaje Como Real;
	Escribir "Ingrese nota del alumno";
	Leer nota;
	cantNotas <- 0;
	cantApro <- 0;
	cantNoA <- 0;
	M <- 0;
	B <- 0;
	R <- 0;
	I <- 0;
	Mientras nota <> -1 o nota >= 0 y nota <= 10 Hacer
		Si nota <= 3 Entonces
			I <- I + 1;
			cantNoA <- cantNoA + 1;
			
		FinSi
		Si nota = 4 o nota = 5 Entonces
			R <- R + 1;
			cantApro <- cantApro + 1;
		FinSi
		Si nota = 6 o nota = 7 Entonces
			B <- B + 1;
			cantApro <- cantApro + 1;
		FinSi
		Si nota >= 8 Entonces
			M <- M + 1;
			cantApro <- cantApro + 1;
		FinSi
		cantNotas <- cantNotas + 1;
		acumnotas <- acumnotas + nota;
		Escribir "Ingrese nota del alumno";
		Leer nota;
	FinMientras
	prom <- acumnotas / cantNotas;
	
	Escribir "Cantidad de notas: ", cantNotas;
	Escribir "Promedio: ", prom;
	Escribir "Cantidad de aprobados: ", cantApro;
	Escribir "Cantidad de no aprobados: ", cantNoA;
	Escribir "Porcentaje de notas: ";
	
FinAlgoritmo
