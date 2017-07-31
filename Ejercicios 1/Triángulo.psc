Algoritmo TrianguloIsosceles
	Imprimir "Introduzca el tamaño de la base:"
	Leer base
	
	punto <- "."
	contador <- 0
	
	
	Repetir
		
		linea <- "."
		puntos <- 1
		
		Mientras puntos < contador Hacer
			linea <- linea + " "
			puntos <- puntos + 1
		Fin Mientras
		
		Si contador!=0 Entonces
			linea <- linea + "."
		FinSi
		Imprimir linea
		
		contador <- contador + 2
		
	Hasta Que contador >= base
	
	linea <- ""
	puntos <- 0
	
	Mientras puntos<contador Hacer
		
		Si puntos%2!=0 Entonces
			
			linea <- linea + " "
			
		Sino
			
			linea <- linea + "."
			
		FinSi
		
		puntos <- puntos + 1
		
	Fin Mientras
	
	linea <- linea + "."
	Imprimir linea
	
FinAlgoritmo
