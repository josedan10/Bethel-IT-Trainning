Algoritmo Factura
	Escribir "Ingrese el importe bruto de la factura"
	Leer a
	x <- ( (a * 15) / 100 )
	Si a > 20000 Entonces
		imprimir "importe neto: ", a - x
		Sino 
			imprimir "importe neto: ", a
		FinSi
FinAlgoritmo