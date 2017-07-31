Algoritmo Granja
	Escribir "Ingrese la cantidad de conejos blancos"
	Leer A
	Escribir "Ingrese el precio de un conejo blanco"
	Leer P1	
	Escribir "Ingrese la cantidad de conejos negros"
	Leer B	
	Escribir "Ingrese el precio de un conejo negro"
	Leer P2
	totalA <- A * P1
	totalB <- B * P2
	Escribir "Total de conejos vendidos: ", A + B
	Escribir "Monto total: ", totalA + totalB
	Si A > B Entonces
		Escribir "Mayor cantidad de conejos vendidos: Blancos"
	FinSi	
	Si A < B Entonces
		Escribir "Mayor cantidad de conejos vendidos: Negros" 
	FinSi
	Si A = B Entonces
		Escribir "La cantidad de conejos negros y blancos vendidos es igual"
	FinSi
	
FinAlgoritmo

