#include <iostream>
using namespace std;

int main() {

	int conejosBlancos, conejosNegros;
	float precioBlancos, precioNegros;

	cout << "Introduzca el precio de un conejo blanco: ";
	cin >> precioBlancos;
	cout << "\nIntroduzca el precio de un conejo negro: ";
	cin >> precioNegros;
	cout << "\nIntroduzca la cantidad de conejos blancos que desea comprar: ";
	cin >> conejosBlancos;
	cout << "\nIntroduzca la cantidad de conejos negros que desea comprar: ";
	cin >> conejosNegros;

	//Verificacion de datos:
	//	Todas las variables debe ser mayores o iguales a cero

	if (conejosBlancos < 0 || conejosNegros < 0 || precioBlancos < 0 || precioNegros < 0) {

		cout << "\nLos datos ingresados no son validos" << endl;
	
	}

	else if(conejosBlancos == conejosNegros){

		cout << "\n\nLa cantidad de conejos blancos es igual a la de conejos negros";

	}
	else if (conejosBlancos > conejosNegros) {

		cout << "\n\nConejos mas vendidos: Blancos" << endl;

	}
	else {

		cout << "\n\nConejos mas vendidos: Negros" << endl;

	}

	cout << "\nTotal de conejos vendidos: " << conejosBlancos + conejosNegros << endl;
	cout << "Total de la venta: " << conejosBlancos * precioBlancos + conejosNegros * precioNegros << endl;

		
	system("PAUSE");
	return 0;
}