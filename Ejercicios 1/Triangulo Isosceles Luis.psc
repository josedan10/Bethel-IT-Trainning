Algoritmo Triangulo_Iscoceles
	
	////////////////////////////////////////////////////////////////////////////////// Declaracion de las Variables que necesitan inicializacion
	SimboloDibujo <- "."
	SimboloSeparacion <- " "
	Count <- 0
	//////////////////////////////////////////////////////////////////////////////////
	
	
	////////////////////////////////////////////////////////////////////////////////// Solicitud y Procesamiento de Datos Iniciales
	Escribir "Ingrese el ancho de la base:"
	Leer AnchoBase 																	// Ancho de la Base en espacios
	Si AnchoBase Es Par Entonces Escribir "Escriba un numero Impar" 				// Verificamos que el ancho sea Impar
	Sino
		Separadores <- (AnchoBase - 1) / 2 											// Cantidad de Separadores a utilizar: Mitad del ancho de la base, redondeada hacia abajo
		Mitad <- Separadores 														// Valor de referencia para preservar la mitad del ancho de la base
	//////////////////////////////////////////////////////////////////////////////////
		
		
		////////////////////////////////////////////////////////////////////////////// 
		Dimension Impares[Separadores + 1] 											// Declaracion de Arreglo
		Para spc <- 0 Hasta Separadores Hacer 										// spc es la cantidad de espacios de por medio de la base
			Impares[spc+1] <- 1 + (2 * spc)											// Este ciclo busca los numeros impares que hay hasta llegar al valor del ancho de la base
		FinPara
		//////////////////////////////////////////////////////////////////////////////
		
		
		////////////////////////////////////////////////////////////////////////////// Este Ciclo repetira Mientras aun queden Separadores y Llineas por colocar
		Mientras Separadores > 0 Hacer												
			
			
			////////////////////////////////////////////////////////////////////////// Dibujamos los primeros y ultimos separadores de la linea
			Para a <- 1 Hasta Separadores Hacer
				Linea <- Linea + SimboloSeparacion									
			Fin Para
			//////////////////////////////////////////////////////////////////////////
			
			
			////////////////////////////////////////////////////////////////////////// Chequeamos si esta en la primera linea
			Segun Separadores Hacer													
				Mitad:
					Linea <- Linea + SimboloDibujo + Linea							// Dibujamos la primera linea
					
				De Otro Modo:														// Dibujamos las lineas que no sean la primera
					Para e <- 1 Hasta Impares[Count] Hacer							
						Inter <- Inter + SimboloSeparacion							// Dibujamos la separacion interior del triangulo
					FinPara
					
					Linea <- Linea + SimboloDibujo + Inter + SimboloDibujo + Linea	// Dibujamos la linea completa
			Fin Segun
			
			Escribir Linea															// Presentamos la linea
			//////////////////////////////////////////////////////////////////////////
			
			
			////////////////////////////////////////////////////////////////////////// Limpiamos las variables que reutilizaremos
			Separadores <- Separadores - 1
			Count <- Count + 1
			Linea <- ""
			Inter <- ""
			//////////////////////////////////////////////////////////////////////////
		Fin Mientras
		
		
		////////////////////////////////////////////////////////////////////////////// Dibujamos la base del triangulo
		Para u <- 1 Hasta spc Hacer
			Base <- SimboloDibujo + SimboloSeparacion + Base
			
		FinPara
		
		Escribir Base
		//////////////////////////////////////////////////////////////////////////////
		
	FinSi
	
FinAlgoritmo
