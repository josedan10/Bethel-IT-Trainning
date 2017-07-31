Algoritmo TriangulBonito
	
	Imprimir "Introduzca el tamaño de la base: "
	Leer Base
	
	contador <- 0
	
	Si base%2=0 Entonces		
		
		Imprimir "No se puede dibujar con base par"
		
	Sino
		
		espacioExt <- (base-1)/2
		espacioInt <- 1
		linea <- ""
		nroLinea <- 1
		
		Mientras espacioExt >= 0 Hacer
			
			espacios <- 0
			
			Si nroLinea=1 Entonces
				
				Repetir
					linea <- linea + " "
					espacios <- espacios + 1
				Hasta Que espacios = espacioExt
				
				linea <- linea + "."
				espacioExt <- espacioExt - 1
				
				Imprimir linea
				linea <- ""
				
			Sino
				contador <- 0
				
				Mientras espacios < espacioExt Hacer
					linea <- linea + " "
					espacios <- espacios + 1
				Fin Mientras
				
				Si espacioExt = 0 Entonces
					puntos=0
					Mientras puntos < base Hacer
						Si puntos%2=0 Entonces
							linea <- linea + "."
							
						Sino
							linea <- linea + " "
						FinSi
						puntos <- puntos+1
			
					FinMientras
					
					Imprimir linea
					espacioExt <- espacioExt - 1
					
				Sino
					linea <- linea + "."
					
					Repetir
						linea <- linea + " "
						contador <- contador + 1
					Hasta Que contador = espacioInt
					espacioInt <- espacioInt + 2
					linea <- linea + "."
					espacioExt <- espacioExt - 1
					
					Imprimir linea
					linea <- ""
				fin si
				
			FinSi
			
			nroLinea <- nroLinea + 1
			
		Fin Mientras
		
		
	Fin Si	
	
FinAlgoritmo
