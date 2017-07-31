Funcion ImprimirArreglo ( Arreglo, filas, columnas, Tabulaciones)
	
	Definir fila, tabCadena como cadena
	Definir tab, i, j, k como entero
	
	Para i <- 1 hasta filas hacer
		
		fila <- ""		//Fila que será impresa
		
		Para j <- 1 hasta columnas hacer
			
			tabCadena <- ""
			
			//Calculamos el tab para cada palabra
			//Sumamos dos para que ninguna palabra esté pegada a la siguiente columna
			tab <- Tabulaciones(j) - longitud(Arreglo(i,j)) + 2
				
			Para k <- 1 hasta tab Hacer
				tabCadena <- tabCadena + " "
			FinPara
				
			fila <- fila + Arreglo(i,j)	+ tabCadena
			
			z <- z + 1
			
		FinPara
		
		Escribir fila
		
	FinPara
	
Fin Funcion

Funcion LeerDatos ( Arreglo, filas, columnas, Tabulaciones )
	//Devuelve un arreglo con la tabulacion correspondiente a cada columna
	
	Definir i, j, z como enteros //Contadores
	z <- 1
	
	
	//Llenamos todos los espacios del arreglo con 0
	Para i <- 1 hasta columnas hacer
		Tabulaciones(i) <- 0
	FinPara
	
	
	Para i <- 1 hasta filas hacer
		
		Para j <- 1 hasta columnas hacer
			
			Escribir "Introduzca el dato número ", z," : "
			Leer Arreglo(i, j)
			
			//Agregamos un nuevo margen de tabulacion si es más grande que el que
			//teníamos antes
			Si Tabulaciones(j) < Longitud(Arreglo(i,j)) entonces
				Tabulaciones(j) <- Longitud(Arreglo(i,j))
			FinSi
			
			z <- z + 1
			
		FinPara
		
	FinPara
	
	
Fin Funcion


Algoritmo ImpresionArreglo
	
	Definir filas, columnas, nroDatos, Tabulaciones como enteros  //Variables de datos
	Definir i, j, z como enteros 					//Contadores
	
	Escribir "Introduzca el número de filas que quiere ver: "
	Leer filas
	Escribir "Introduzca el número de columnas que quiere ver: "
	Leer columnas
	
	Dimension Arreglo(filas, columnas)
	nroDatos <- filas * columnas
	Dimension Tabulaciones(columnas)
	
	LeerDatos(Arreglo, filas, columnas, Tabulaciones)
	ImprimirArreglo(Arreglo, filas, columnas, Tabulaciones)
	
	
FinAlgoritmo
