Funcion resultado <- Operacion ( numero1, numero2, simboloOperacion )
	
	
	Si simboloOperacion = "+" Entonces
		resultado <- numero1 + numero2
		
	FinSi
	
	Si simboloOperacion = "-" Entonces
		resultado <- numero1 - numero2
		
	FinSi
	
	Si simboloOperacion = "*" Entonces
		resultado <- numero1 * numero2
		
	FinSi
	
	Si simboloOperacion = "/" Entonces
		resultado <- numero1 / numero2
		
	FinSi
	
	Limpiar Pantalla
	Escribir "RESULTADO = ", resultado
	
Fin Funcion



Algoritmo Calculadora
	
	//Definicion de variables
	Definir numero1, numero2 como Enteros
	Definir simboloOperacion como Cadena
	Calculo <- verdadero
	
	//Lectura de datos
	Escribir "numero 1: "
	Leer numero1
	
	//Solo el segundo n�mero cambia en cada ciclo
	//El primero toma el valor del resultado anterior
	Escribir "Escriba el s�mbolo de la operaci�n que desea realizar(+,-,*,/): "
	Leer simboloOperacion
	
	Repetir
		
		//Los simbolos pueden ser unicamente '+', '-', '*' o '/'
		Si simboloOperacion = "+" o simboloOperacion = "-" o simboloOperacion = "*" o simboloOperacion = "/" Entonces
			
			Escribir "numero 2: "
			Leer numero2			
			
			//Reasignamos el valor de numero1 al resultado de la operacion
			numero1 <- Operacion(numero1, numero2, simboloOperacion)
			
			Escribir "Ingrese otro s�mbolo de operaci�n para continuar los c�lculos(+,-,*,/): "
			Leer simboloOperacion
			
		Sino
			
			Calculo = falso
			
		Fin Si
		
	Hasta Que Calculo = falso 
	
	
	
FinAlgoritmo
