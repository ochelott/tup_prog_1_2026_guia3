Proceso DiskJockey
	Definir nom, nomMa, NomMe Como Caracter;
	Definir cantC, Min, Seg, Mayor, Menor, canSeg, totSeg, i, h, m, s Como Entero;
	Escribir 'Ingrese la cantidad de canciones a procesar';
	Leer cantC;
	totSeg <- 0;
	i <- 0;
		
	Mientras i < cantc y totseg < 4440 Hacer
		i = i + 1;
		Escribir 'Ingrese nombre de la cancion';
		leer nom;
		Escribir 'Ingrese los minutos y luego los segundos de la cancion";
		Leer min, seg;
		canSeg <- (min * 60) + seg;
		totSeg <- totSeg + canSeg;
		si i = 1 Entonces
			mayor <- canseg;
			menor <- canseg;
			nomMa <- nom;
			nomMe <- nom;
		SiNo
			
		Si canseg > mayor entonces
			mayor <- canseg;
			nomMa <- nom;
		FinSi
		Si canseg < menor entonces
			menor <- canseg;
			nomMe <- nom;
		FinSi
	FinSi
	FinMientras

H <- trunc(totseg / 3600);
M <- trunc((totseg MOD 3600)/60);
S <- totseg MOD 60;
Escribir 'Tiempo total del album: ' ,H, ':', M, ':', S;
Escribir 'Cancion mayor duracion: ', nomMa, ' Duracion: ', trunc(mayor / 60), ':', mayor Mod 60;
Escribir 'Cancion menor duracion: ', nomMe, ' Duracion: ', trunc(menor / 60), ':', menor Mod 60;
FinProceso
