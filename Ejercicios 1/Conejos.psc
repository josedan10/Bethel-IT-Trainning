Algoritmo Conejos
	
	Imprimir "Introduzca el número de meses que desea revisar: "
	Leer limite
	
	conejos1 <- 2
	conejos2 <- 0
	auxiliar <- 0
	mes <- 1
	
	Mientras mes < limite Hacer
		
		auxiliar <- conejos2
		conejos2 <- conejos1+conejos2
		conejos1 <- auxiliar
		mes <- mes + 1
		
	Fin Mientras

	Imprimir "El número de conejos que se tienen en ",mes," mes(es) es: ", conejos3+conejos2+conejos1
	
FinAlgoritmo
