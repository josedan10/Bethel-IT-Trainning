Funcion totalConejos <- fibonacciParametrizado ( conejosTiernosIniciales, conejosMadurosIniciales, tiempoTiernos, tiempoMaduros, cantidadProcreacionMaduros, tiempoTotal )
	
	Definir conejosTiernos, conejosMaduros como Entero;
	
	Si tiempoTiernos = tiempoMaduros Entonces
		
		//Como se reproducen al mismo tiempo, entonces siempre coincidirán la procreación de los maduros con los tiernos
		//Por lo tanto los meses intermedios no son necesarios
		//Recortamos el ciclo para optimizar el proceso
		
		Definir nuevoTiempo Como Entero; //Variable para reducir el ciclo
		Definir totalParcial como Entero; //Variable para las cuentas parciales
		
		nuevoTiempo = trunc(tiempoTotal / tiempoTiernos);
		totalParcial <- conejosTiernosIniciales + conejosMadurosIniciales;
		
		Para i <- 1 hasta nuevoTiempo hacer
			
			totalParcial <- (totalParcial * cantidadProcreacionMaduros) * 2;
			
		FinPara
		
		totalConejos <- totalParcial;
		
	SiNo
		
		Si tiempoTiernos = 1 Entonces
			
			Dimension conejosMadurosArreglo(tiempoMaduros);
			conejosTiernos <- conejosTiernosIniciales;
			
			Para mes <- 1 hasta TiempoTotal hacer
				
				
				//Llenamos la primera casilla y nacen los nuevos conejos
				conejosMadurosArreglo(0) <- (conejosTiernos + conejosMadurosArreglo(tiempoMaduros - 1)) * cantidadProcreacionMaduros;
				conejosTiernos <- conejosMadurosArreglo(0);
				
				//Corremos los conejos hacia la derecha
				i <- tiempoMaduros - 1;
				
				Mientras i > 0 Hacer
					
					conejosMadurosArreglo(i) <- conejosMadurosArreglo(i - 1);
					i <- i - 1;
					
				FinMientras
				
				
			FinPara
			
			//Ahora sumamos todos los conejos
			Para i <- 0 hasta tiempoMaduros - 1 hacer
				totalParcial <- totalParcial + conejosMadurosArreglo(i);
			FinPara
			
			totalConejos <- totalParcial + conejosTiernos;
			
		SiNo
			
			Si tiempoMaduros = 1 entonces
				
				Dimension conejosTiernosArreglo(tiempoTiernos);
				conejosTiernosArreglo(0) <- conejosTiernosIniciales;
				
				Para mes <- 1 hasta tiempoTotal hacer
	
					conejosMaduros <- (conejosMaduros + conejosTiernosArreglo(tiempoTiernos - 1)) * cantidadProcreacionMaduros;
					
					//Corremos los conejos tiernos
					i <- tiempoTiernos - 1;
					Mientras i > 0 hacer 
						
						conejosTiernosArreglo(i) <- conejosTiernosArreglo(i - 1);
						i <- i - 1;
						
					FinMientras
					
					conejosTiernosArreglo(0) <- conejosMaduros;
					
				FinPara
				
				//Sumamos todos los conejos
				Para i <- 0 hasta tiempoTiernos - 1 hacer
					totalParcial <- totalParcial + conejosTiernosArreglo(i);
				FinPara
				
				totalConejos <- totalParcial + conejosMaduros;
				
			SiNo
				
				//Corrida en ambos arreglos
				Dimension conejosTiernosArreglo(tiempoTiernos - 1);
				Dimension conejosMadurosArreglo(tiempoMaduros);
				
				//Asignamos los valores iniciales en el arreglo
				conejosMadurosArreglo(0) <- conejosMadurosIniciales;
				conejosTiernosArreglo(0) <- conejosTiernosIniciales;
				
				Para mes <- 1 hasta tiempoTotal hacer
					
					//Guardamos los conejos maduros que van a procrear
					conejosMaduros <- conejosMadurosArreglo(tiempoMaduros - 1);
					
					//Desplazamos los conejos maduros
					i <- tiempoMaduros - 1;
					Mientras i > 0 hacer
						
						conejosMadurosArreglo(i) <- conejosMadurosArreglo(i - 1);
						i <- i - 1;
						
					FinMientras
					
					//Sumamos los conejos tiernos que van a procrear
					conejosMaduros <- (conejosMaduros + conejosTiernosArreglo(tiempoTiernos - 2)) * cantidadProcreacionMaduros;
					
					//Desplazamos los conejos tiernos
					
					i <- tiempoTiernos - 2;
					Mientras i > 0 hacer
						
						conejosTiernosArreglo(i) <- conejosTiernosArreglo(i - 1);
						i <- i - 1;
						
					FinMientras
					
					//Anexamos los nuevos conejos maduros al arreglo y también los nuevos tiernos
					conejosMadurosArreglo(0) <- conejosMaduros;
					conejosTiernosArreglo(0) <- conejosMaduros;
					
				FinPara
				
				//Sumamos todos los conejos
				Para i <- 0 hasta tiempoTiernos - 2 hacer
					totalParcial <- totalParcial + conejosTiernosArreglo(i);
				FinPara
				
				Para i <- 0 hasta tiempoMaduros - 1 hacer
					totalParcial <- totalParcial + conejosMadurosArreglo(i);
				FinPara
				
				totalConejos <- totalParcial;
				
			FinSi
			
		FinSi
		
	FinSi
	
	
Fin Funcion



Algoritmo FibonacciParam
	
	Definir conejosTiernosIniciales, conejosMadurosIniciales Como Enteros;
	Definir conejosTiernos, conejosMaduros Como Enteros;
	Definir tiempoTiernos, tiempoMaduros Como Enteros;
	Definir cantidadProcreacionMaduros, tiempoTotal Como Entero;
	Definir totalConejos Como Entero;
	
	Escribir "Introduzca el numero de parejas de conejos tiernos con los que desea empezar: ";
	Leer conejosTiernosIniciales;
	
	Escribir "Introduzca el numero de parejas de conejos maduros con los que desea empezar: ";
	Leer conejosMadurosIniciales;
	
	Escribir "Tiempo que tarda una pareja de conejos tiernos en procrear: ";
	Leer tiempoTiernos;
	
	Escribir "Tiempo que tarda una pareja de conejos maduros en procrear: ";
	Leer tiempoMaduros;
	
	Escribir "Cantidad de parejas que procrea una pareja de conejos maduros: ";
	Leer cantidadProcreacionMaduros;
	
	Escribir "Introduzca el número de meses que desea evaluar: ";
	Leer tiempoTotal;
	
	Si tiempoTiernos = 0 o tiempoMaduros = 0 entonces
		//No se reproducen
		Escribir "El total de conejos es igual al inicial";
		
	Sino
		
		Si conejosMadurosIniciales = 0 y conejosTiernosIniciales = 0 Entonces
			//No hay conejos
			Escribir "Si no hay conejos no se pueden procrear :v";
			
		Sino
			
			totalConejos <- fibonacciParametrizado(conejosTiernosIniciales, conejosMadurosIniciales, tiempoTiernos, tiempoMaduros, cantidadProcreacionMaduros, tiempoTotal);
			
			Escribir "El total de conejos en ", tiempoTotal, " meses es ", totalConejos * 2;
			
		FinSi
		
	FinSi
	
	
	
FinAlgoritmo
