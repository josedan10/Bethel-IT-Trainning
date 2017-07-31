Algoritmo Conejos_FibMod
	
	Escribir "¿Con cuantas parejas de conejos comenzaras?"
	Leer MisConejos
	ParejasIniciales <- MisConejos
	MisConejos <- MisConejos * 2
	
	Escribir "¿Cuanto tiempo (Meses) tarda una pareja madura en procrear?"
	Leer TiempoProPM
	
	Escribir "¿Cuantas parejas procrea?"
	Leer CantidadProPM
	CantidadProPM <- CantidadProPM * 2
	
	Escribir "¿Cuanto tiempo (Meses) tarda una pareja tierna en procrear?"
	Leer TiempoProRN
	ConsTiempoProRN <- TiempoProRN
	
	Escribir "¿Cuantas parejas procrea?"
	Leer CantidadProRN
	CantidadProRN <- CantidadProRN * 2
	
	
	Escribir "¿Cuantos meses quieres evaluar?"
	Leer TiempoTotal
	
	mes <- 0
	Repetir
		mes<-mes+1
		Si TiempoProRN mod TiempoProPM = 0 Entonces
		MisConejos = (MisConejos + CantidadProPM) * ParejasIniciales
		Fin Si
		
		Mientras i <= TiempoProRN - (ConsTiempoProRN * 2)
			MisConejos <- MisConejos + CantidadProPM
			
			i <- i + 1
		FinMientras
		
		TiempoProRN <- TiempoProRN + 1
		i <- 0
		
		Imprimir "Mes ",mes,":"
		Imprimir "MisConejos = ",MisConejos
		Imprimir "CantidadProParMaduro = ",CantidadProPM
		Imprimir "CantidadProTiernos = ",CantidadProRN
		Imprimir "TiempoProParMaduro = ",TiempoProPM
		Imprimir "TiempoProTiernos = ",TiempoProRN
		Imprimir "ConsTiempoProTiernos = ",ConsTiempoProRN
		Imprimir " "
		Imprimir " "
	Hasta Que TiempoProRN > TiempoTotal

	
	Escribir "Al cabo de " + ConvertirATexto(TiempoTotal) + " meses, habran " + ConvertirATexto(MisConejos) + " conejos"
	
	
FinAlgoritmo
