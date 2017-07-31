Funcion multiplicacion <- multiplicacionArreglo ( Arreglo, cantidad )
	
	//Multiplicacion de los numeros del arreglo
	multiplicacion <- 1
	Para i <- 1 hasta cantidad Hacer
		multiplicacion <- multiplicacion * Arreglo(i)
	FinPara
	
Fin Funcion

Funcion resta <- restaArreglo ( Arreglo, cantidad )
	
	//Resta de los numeros del arreglo
	resta <- 0
	Para i <- 1 hasta cantidad Hacer
		resta <- resta - Arreglo(i)
	FinPara
	
Fin Funcion

Funcion promedio <- promedioArreglo ( Arreglo, cantidad )
	
	//Promedio de los numeros del arreglo
	promedio <- 0
	
	Para i <- 1 hasta cantidad Con Paso 1 Hacer
		promedio <- promedio + Arreglo(i)
	FinPara
	
	promedio <- promedio / cantidad
	
Fin Funcion

Funcion suma <- sumaArreglo ( Arreglo, cantidad )
	
	//Suma de los numeros del arreglo
	suma <- 0
	Para i <- 1 hasta cantidad Hacer
		suma <- suma + Arreglo(i)
	FinPara
	
Fin Funcion

Algoritmo Operaciones_Arreglo
	
	//Deifinición y lectura de datos
	Definir cantidad como enteros
	Definir promedio como real
	Definir suma como real
	Definir resta como real
	Definir multiplicacion como real
	
	Escribir "Escriba la cantidad de números que desea introducir en el arreglo: "
	Leer cantidad
	Dimension Arreglo(cantidad)
	
	//Agregamos los números al arreglo
	Para i <- 1 hasta cantidad hacer
		Escribir "Ingrese el ", i, " numero del arreglo"
		Leer Arreglo(i)
		Escribir Arreglo(i)
	FinPara	
	
	promedio <- promedioArreglo(Arreglo, cantidad)
	suma <- sumaArreglo(Arreglo, cantidad)
	resta <- restaArreglo(Arreglo, cantidad)
	multiplicacion <- multiplicacionArreglo(Arreglo, cantidad)
	
	Escribir "El promedio del arreglo es: ", promedio
	Escribir "La suma del arreglo es: ", suma
	Escribir "La resta del arreglo es:", resta
	Escribir "La multiplicación del arreglo es: ", multiplicacion
	
FinAlgoritmo
