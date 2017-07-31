Algoritmo Importe
	
	Imprimir "Introduzca el importe bruto: "
	Leer importeBruto
	
	Si importeBruto < 20000
		
		importeNeto <- importeBruto
		
	Sino
		
		importeNeto <- importeBruto - importeBruto*0.15
		
	FinSi
	
	Imprimir "El importe neto es: ", importeNeto
	
FinAlgoritmo
