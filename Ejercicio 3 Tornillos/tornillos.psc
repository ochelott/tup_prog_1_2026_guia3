Proceso Tornillos
	Definir cod, mayorEA, medE, fallas, mayorError, fallasTot, porFlotes, porcenTot, lotesTot, torni, i Como Entero;
	Definir loteMayor, loteMenor, errorMaGlobal, errorMeGlobal Como Entero;
	errorMeGlobal <- 999;
	LoteMenor <- 0;
	errorMaGlobal <- 0;
	LoteMayor <- 0;
	Lotestot <- 0;
	fallasTot <- 0;
	Escribir 'Ingrese numero de codigo: [0 para salir]';
	leer cod;
	Mientras Cod <> 0 Hacer
		Escribir 'Ingrese medida esperada:';
		leer medE;
		fallas <- 0;
		mayorError <- 0;
		Para i = 1 Hasta 10 Hacer
				torni <- azar (99) + 1;
				mayorEA <- abs (medE - torni);
				
			Si mayorEA > mayorError Entonces
				mayorError <- mayorEA;
			FinSi
			si mayorEA > 10 Entonces
				fallas <- fallas + 1;
				fallasTot <- fallasTot + 1;
			FinSi
		FinPara
		porFlotes <- (fallas / 10) * 100;
		Lotestot <- Lotestot + 1;
		Si mayorError > errorMaGlobal Entonces
			errorMayorGlobal <- mayorError;
			loteMayor <- lotesTot;
		FinSi
		
		Si mayorError < errorMeGlobal Entonces
			errorMeGlobal <- mayorError;
			loteMenor <- lotesTot;
		FinSi
		
		Escribir 'Mayor error absoluto: ', mayorError;
		Escribir 'Porcentaje de fallas: ', porFlotes;
		Escribir 'Ingrese numero de codigo: [0 para salir]';
		leer cod;
	FinMientras
	porcenTot <- (fallasTot / (lotestot * 10)) * 100;
	Escribir 'Cantidad de lotes procesados: ', Lotestot;	
	Escribir '% total de fallas: ', porcenTot;
	Escribir 'Lote con mayor error absoluto: ', loteMayor, ' (Error: ', errorMaGlobal, ')';
	Escribir 'Lote con menor error absoluto: ', loteMenor, ' (Error: ', errorMeGlobal, ')';
FinProceso
