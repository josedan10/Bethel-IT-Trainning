Funcion  DibujarParalelogramo ( base, altura )
	
	Definir espacioIzq, espacioDer, lineaBase, intermedio como Cadena;
	Definir simboloDibujo, espacio como Cadena;
	Definir nroLinea como Entero;
	
	nroLinea <- altura;
	
	simboloDibujo <- "*";
	espacio <- " ";
	
	espacioDer <- "";
	
	intermedio <- simboloDibujo;
	
	
	//Dibujamos las aristas inferior y superior	
	Si base Es Par Entonces
		
		Para i <- 1 hasta base Hacer			
			lineaBase <- lineaBase + simboloDibujo;			
		FinPara
		
	SiNo
		
		Para i <- 1 hasta Base Hacer
			
			Si i es Impar Entonces
				lineaBase <- lineaBase + simboloDibujo;
			SiNo
				lineaBase <- lineaBase + espacio;
			FinSi
			
		FinPara
		
	FinSi
	
	//Dibujamos el intermedio que siempre tendrá en mismo tamaño
	Para i <- 1 hasta Base - 2 Hacer
		intermedio <- intermedio + espacio;
	FinPara
	
	intermedio <- intermedio + simboloDibujo;
	
	Para i <- 1 Hasta altura Hacer
		//Cuadramos el espacio del lado izquierdo
		espacioIzq <- "";
		
		nroLinea <- nroLinea - 1;
		
		Para k <- 1 hasta nroLinea hacer
			espacioIzq <- espacioIzq + espacio;
		FinPara
		
		//Imprimimos arista superior
		Si i = 1 Entonces
			Escribir espacioIzq + lineaBase;
		FinSi
		
		//Imprimos intermedios
		Si i != 1 y i != altura Entonces
			Escribir espacioIzq + intermedio + espacioDer;
		FinSi
		
		//Imprimimos arista inferior
		Si i = altura Entonces
			Escribir lineaBase + espacioDer;
		FinSi
		
		espacioDer <- espacioDer + espacio;
		
	FinPara
	
Fin Funcion

Algoritmo Paralelogramo
	
	Definir base, altura Como Entero;
	
	Escribir "Indique el tamaño de la base del trapecio(Preferiblemente impar para que se vea mejor :3) y que sea mayor a 3:";
	Leer base;
	
	Escribir "Indique la altura del trapecio que sea mayor a 3:";
	Leer altura;
	
	Si base < 3 o altura < 3 entonces
		Escribir "No se puede dibujar el trapecio";
	SiNo
		DibujarParalelogramo(base, altura);
	FinSi

	
FinAlgoritmo
