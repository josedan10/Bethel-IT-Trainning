Algoritmo Resolvente
	Imprimir "Introduzca los valores de los coeficientes"
	Imprimir "A, B, C que corresponden a la ecuación de la resolvente"
	
	Leer A, B, C
	
	Si A=0 Entonces
		
		Imprimir "La solución a esa ecuación es: ",C/B
		
	Sino
		
		discriminante <- (B^2)-4*A*C
		
		Si discriminante < 0 Entonces
			
			discriminante <- discriminante*(-1)
			Imprimir "x1 = ",-B/2*a,-rc(discriminante)/(2*a),"i"
			Imprimir "x2 = ",-B/2*a,"+",rc(discriminante)/(2*a),"i"
			
		Sino
			
			x1 <- (-B+rc(discriminante))/(2*a)
			x2 <- (-B-rc(discriminante))/(2*a)
			Imprimir "x1 = ",x1
			Imprimir "x2 = ",x2
			
		Fin Si
	Fin Si
	
FinAlgoritmo
