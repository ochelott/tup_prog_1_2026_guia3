Proceso loteria
	Definir num, mayor, menor, cantp, cantI, numI, i Como Entero;
	Definir promI Como Real;
	Escribir 'Ingrese los numeros sorteados [0 - 9999]';
	Leer num;
	mayor <- num;
	menor <- num;
	cantI <- 0;
	cantp <- 0;
	
	Para i = 1 Hasta 19 Hacer
		
		Si num > mayor entonces
			mayor <- num;
		SiNo
			
			si num < menor entonces
				menor <- num;
			finsi
		FinSi
			si num MOD 2 = 0 Entonces
				cantp <- cantp + 1;
			sino
				numI <- numI + num;
				cantI <- cantI + 1;
			finsi
			Escribir 'Ingrese los numeros sorteados [0 - 9999]';
			Leer num;
	FinPara
	Si cantI <> 0 Entonces
		promI <- numI / cantI;
	FinSi
	Escribir 'Promedio Impares: ', promI;
	Escribir 'Mayor numero: ', mayor;
	Escribir 'Menor numero: ',menor;
	Escribir 'cantidad de pares: ', cantp;
FinProceso
