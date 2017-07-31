#include <iostream>
using namespace std;

int main() {

	int base, i, j, espacioExt, espacioInt, linea;
	int cuenta = 1, baseAux; //Variables para sacar la cuenta de cuántas lineas hay
	char **tablero, separador = ' ', muestra = '.';

	cout << "La base del triangulo debe ser un numero impar" << endl
		<< "Introduzca el tamano de la base: ";
	cin >> base;

	if (base <= 1) {

		cout << "No se puede dibujar un triangulo con esta base" << endl;
		system("PAUSE"); return 1;
		
	}
	else if (base % 2 == 0){

		cout << "La base no es impar" << endl;
		system("PAUSE"); return 1;

	}
	else {
		//Pintamos el triangulo

		//1. Armamos la cuadrícula
		//	1.1 Hay que saber cuantas lineas vamos a escribir
		baseAux = base;

		while (baseAux != 1) {

			baseAux -= 2;
			cuenta++;

		}
	

		//	2.2 Reservamos el espacio para el tablero
		tablero = (char **)malloc(cuenta * sizeof(char *));

		for (i = 0; i < base; i++) {
			tablero[i] = (char *)malloc(base * sizeof(char));
		}


		//2. Llenamos la cuadrícula
		//	2.1 Caso: primera linea
		for (i = 0; i < base; i++) {

			if (i != ((base - 1) / 2)) {

				tablero[0][i] = separador;

			}
			else {

				tablero[0][i] = muestra;

			}

		}

		espacioExt = (((base - 1)) / 2) - 1;//Restamos uno porque ya la primera linea la escribimos
		espacioInt = 1;
		linea = 1; 

		//	 Caso: lineas intermedias
		while (espacioExt > 0) {
			
			for (i = 0; i < espacioExt; i++) {
			
				tablero[linea][i] = separador;

			}

			tablero[linea][i] = muestra;

			for (i = 0; i < espacioInt; i++) {

				tablero[linea][i + espacioExt + 1] = separador;

			}

			tablero[linea][i + espacioExt + 1] = muestra;

			for (i = 0; i < espacioExt; i++) {

				tablero[linea][espacioExt + espacioInt + 2 + i] = separador;

			}

			linea++;
			espacioExt--;
			espacioInt += 2;
		}

		//Caso: ultima linea
		for (i = 0; i < base; i++) {
			
			if (i % 2 == 0) tablero[linea][i] = muestra;
			else tablero[linea][i] = separador;

		}

	}

	for (i = 0; i < cuenta; i++) {
		
		for (j = 0; j < base; j++) {
			cout << tablero[i][j];
		}
		cout << endl;

	}
	
	system("PAUSE");
	return 0;
}