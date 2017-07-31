Algoritmo Sueldo
	
	SalarioMinimo <- 40638
	Imprimir "El salario minimo actual es: ",SalarioMinimo
	Imprimir "Introduzca el salario para calcular el total con el aumento"
	Leer salario
	
	Si salario=SalarioMinimo Entonces
		
		salario=salario+SalarioMinimo*0.1
		
	Sino
		
		Imprimir "Usted no tiene aumento"
		
	FinSi
	
	Imprimir "Su salario total es: ",salario
	
FinAlgoritmo
